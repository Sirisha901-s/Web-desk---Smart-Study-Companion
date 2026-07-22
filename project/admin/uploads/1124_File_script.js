
document.addEventListener('DOMContentLoaded', () => {
  document.getElementById('form').style.display = 'block';
  document.getElementById('resume').style.display = 'none';

  // Attach buttons
  document.getElementById('editBtn').addEventListener('click', editResume);
  document.getElementById('downloadBtn').addEventListener('click', downloadResume);
});

// ---------------- VALIDATION ----------------
function validateForm() {
  let valid = true;
  let messages = [];

  // Email validation
  const email = document.getElementById('email').value.trim();
  if (email && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    messages.push("❌ Invalid email format");
    valid = false;
  }

  // Phone validation (10 digits)
  const phone = document.getElementById('phone').value.trim();
  if (phone && !/^\d{10}$/.test(phone)) {
    messages.push("❌ Phone number must be 10 digits");
    valid = false;
  }

  // LinkedIn strict URL check
  const linkedin = document.getElementById('linkedin').value.trim();
  if (linkedin && !/^https:\/\/(www\.)?linkedin\.com\/.*$/.test(linkedin)) {
    messages.push("❌ LinkedIn URL must start with https://www.linkedin.com/");
    valid = false;
  }

  // GitHub strict URL check
  const github = document.getElementById('github').value.trim();
  if (github && !/^https:\/\/(www\.)?github\.com\/.*$/.test(github)) {
    messages.push("❌ GitHub URL must start with https://github.com/");
    valid = false;
  }

  // Summary length
  const summary = document.getElementById('summary').value.trim();
  if (summary.length > 300) {
    messages.push("❌ Summary cannot exceed 300 characters");
    valid = false;
  }

  // Skills - prevent duplicates & check rating 1-10
  const skillInputs = document.querySelectorAll('#skills-section input[type="text"]');
  const ratingInputs = document.querySelectorAll('#skills-section input[type="number"]');
  const skillsSet = new Set();
  skillInputs.forEach((input, i) => {
    const skill = input.value.trim().toLowerCase();
    if (skill) {
      if (skillsSet.has(skill)) {
        messages.push(`❌ Duplicate skill: ${input.value}`);
        valid = false;
      }
      skillsSet.add(skill);
      const rating = ratingInputs[i].value;
      if (rating && (rating < 1 || rating > 10)) {
        messages.push(`❌ Rating for ${input.value} must be between 1–10`);
        valid = false;
      }
    }
  });

  // Dynamic sections (experience, education, project) - start < end date
  document.querySelectorAll('#experience-section .row2, #education-section .row2, #project-section .row2')
    .forEach(section => {
      const start = section.querySelector('input[type="date"]')?.value;
      const end = section.querySelector('.end-date')?.value;
      const present = section.querySelector('.present')?.checked;
      if (start && end && !present && start > end) {
        messages.push("❌ Start date cannot be later than end date");
        valid = false;
      }
    });

  // Empty dynamic section check
//   document.querySelectorAll('.row2').forEach(section => {
//     const inputs = section.querySelectorAll('input[type="text"], input[type="date"]');
//     let filled = false;
//     inputs.forEach(inp => { if (inp.value.trim() !== '') filled = true; });
//     if (!filled) {
//       messages.push("❌ One of the dynamic sections is empty, please fill or remove it");
//       valid = false;
//     }
//   });

  if (!valid) {
    alert(messages.join("\n"));
  }
  return valid;
}

// ---------------- HANDLERS ----------------
function handleGenerateResume() {
  if (!validateForm()) return;
  generateResume();
  document.getElementById('form').style.display = 'none';
  document.getElementById('resume').style.display = 'block';
  sessionStorage.clear();
}

function editResume() {
  document.getElementById('form').style.display = 'block';
  document.getElementById('resume').style.display = 'none';
}

function generateResume() {
  // Basic Info
  document.getElementById('r-name').innerText = document.getElementById('name').value;
  document.getElementById('r-prof').innerText = document.getElementById('prof').value;
  document.getElementById('r-email').innerText = document.getElementById('email').value;
  document.getElementById('r-phone').innerText = document.getElementById('phone').value;
  document.getElementById('r-country').innerText = document.getElementById('country').value;
  document.getElementById('r-city').innerText = document.getElementById('city').value;
  document.getElementById('r-linkedin').innerText = document.getElementById('linkedin').value;
  document.getElementById('r-github').innerText = document.getElementById('github').value;
  document.getElementById('r-summary').innerText = document.getElementById('summary').value;

  // Experience
  const experienceSections = document.querySelectorAll('#experience-section .row2');
  let experienceHTML = '';
  experienceSections.forEach(section => {
    const post = section.querySelector('#p-name')?.value;
    const company = section.querySelector('#c-name')?.value;
    const dates = section.querySelectorAll('input[type="date"]');
    const start = dates[0]?.value || '';
    const end = section.querySelector('.present')?.checked ? 'Present' : (dates[1]?.value || '');
    const detailList = section.querySelectorAll('.details-list li');
    const details = Array.from(detailList).map(li => `<li>${li.textContent}</li>`).join('');
    experienceHTML += `<div><h3>${post}</h3><span>${company} | ${start} - ${end}</span><ul>${details}</ul></div>`;
  });
  document.getElementById('experience-display').innerHTML = experienceHTML;

  // Education
  const educationSections = document.querySelectorAll('#education-section .row2');
  let educationHTML = '';
  educationSections.forEach(section => {
    const degree = section.querySelector('#d-name')?.value;
    const university = section.querySelector('#U-name')?.value;
    const dates = section.querySelectorAll('input[type="date"]');
    const start = dates[0]?.value || '';
    const end = section.querySelector('.present')?.checked ? 'Present' : (dates[1]?.value || '');
    const detailList = section.querySelectorAll('.details-list li');
    const details = Array.from(detailList).map(li => `<li>${li.textContent}</li>`).join('');
    educationHTML += `<div><h3>${degree}</h3><span>${university} | ${start} - ${end}</span><ul>${details}</ul></div>`;
  });
  document.getElementById('education-display').innerHTML = educationHTML;

  // Project
  const projectSections = document.querySelectorAll('#project-section .row2');
  let projectHTML = '';
  projectSections.forEach(section => {
    const projectName = section.querySelector('#project-name')?.value;
    const dates = section.querySelectorAll('input[type="date"]');
    const start = dates[0]?.value || '';
    const end = section.querySelector('.present')?.checked ? 'Present' : (dates[1]?.value || '');
    const detailList = section.querySelectorAll('.details-list li');
    const details = Array.from(detailList).map(li => `<li>${li.textContent}</li>`).join('');
    projectHTML += `<div><h3>${projectName}</h3><span>${start} - ${end}</span><ul>${details}</ul></div>`;
  });
  document.getElementById('project-display').innerHTML = projectHTML;

  // Achievements
  const achSections = document.querySelectorAll('#achivement-section .row2');
  let achHTML = '';
  achSections.forEach(section => {
    const title = section.querySelector('#a-name')?.value;
    const detailList = section.querySelectorAll('.details-list li');
    const details = Array.from(detailList).map(li => `<li>${li.textContent}</li>`).join('');
    achHTML += `<div><h3>${title}</h3><ul>${details}</ul></div>`;
  });
  document.getElementById('achivement-display').innerHTML = achHTML;

  // Skills
  const skillInputs = document.querySelectorAll('#skills-section input[type="text"]');
  const ratingInputs = document.querySelectorAll('#skills-section input[type="number"]');
  const skillList = document.querySelector('.skills ul');
  skillList.innerHTML = '';
  skillInputs.forEach((input, i) => {
    if (input.value.trim() !== '') {
      const li = document.createElement('li');
      li.textContent = ratingInputs[i].value ? `${input.value} - ${ratingInputs[i].value}/10` : input.value;
      skillList.appendChild(li);
    }
  });

  // Languages
  const langInputs = document.querySelectorAll('#language-section input[type="text"]');
  const langList = document.querySelector('.languages ul');
  langList.innerHTML = '';
  langInputs.forEach(input => { if(input.value.trim() !== '') { const li = document.createElement('li'); li.textContent = input.value; langList.appendChild(li); } });

  // Hobbies
  const hobbyInputs = document.querySelectorAll('#hobby-section input[type="text"]');
  const hobbyList = document.querySelector('.hobbies ul');
  hobbyList.innerHTML = '';
  hobbyInputs.forEach(input => { if(input.value.trim() !== '') { const li = document.createElement('li'); li.textContent = input.value; hobbyList.appendChild(li); } });
}

// ---------------- DYNAMIC SECTIONS ----------------
document.querySelectorAll('.add-btn').forEach(btn => {
  btn.addEventListener('click', function() {
    const type = this.dataset.type;
    const section = this.closest(`#${type}-section`);
    const row2 = section.querySelector('.row2');
    const clone = row2.cloneNode(true);
    clone.querySelectorAll('input').forEach(input => { input.value=''; if(input.type==='checkbox') input.checked=false; if(input.classList.contains('end-date')) input.disabled=false; });
    clone.querySelectorAll('.details-list').forEach(list => list.innerHTML='');
    const label = clone.querySelector('span');
    if(label) label.textContent = `${type.charAt(0).toUpperCase() + type.slice(1)} ${section.querySelectorAll('.row2').length + 1}`;
    const trash = document.createElement('i'); trash.className='fa-solid fa-trash trash-icon'; trash.addEventListener('click',()=>clone.remove());
    clone.style.position='relative'; clone.appendChild(trash);
    section.appendChild(clone);
    blindPresentCheckboxes();
  });
});

// Add bullet points
document.addEventListener('click', function(e){
  const addBtn = e.target.closest('.add-detail-btn');
  if(addBtn){
    const wrapper = addBtn.closest('.detail-input');
    const input = wrapper.querySelector('.details-input');
    const ul = wrapper.querySelector('.details-list');
    if(input.value.trim() !== ''){
      const li = document.createElement('li'); li.textContent = input.value;
      const delBtn = document.createElement('button'); delBtn.innerHTML='<i class="fa-solid fa-trash"></i>'; delBtn.className='bullet-delete'; delBtn.onclick=()=>li.remove();
      li.appendChild(delBtn); ul.appendChild(li); input.value='';
    }
  }
});

// Present checkboxes
function blindPresentCheckboxes(){
  document.querySelectorAll('.present').forEach(cb => {
    cb.removeEventListener('change', handlePresentChange);
    cb.addEventListener('change', handlePresentChange);
  });
}

function handlePresentChange(){
  const parent = this.closest('.input');
  const endDate = parent.querySelector('.end-date');
  if(this.checked){ endDate.disabled=true; endDate.value=''; } else { endDate.disabled=false; }
}
blindPresentCheckboxes();

// ---------------- PDF DOWNLOAD ----------------
// Download resume without buttons
function downloadResume(){
  const resume = document.getElementById('resume');
  const buttons = resume.querySelectorAll('#editBtn, #downloadBtn');
 // Add proper classes to your buttons
  // Hide buttons temporarily
  buttons.forEach(btn => btn.style.display = 'none');

  const { jsPDF } = window.jspdf;
  const pdf = new jsPDF('p','pt','a4');
  
  html2canvas(resume, { scale: 2, useCORS:true }).then(canvas=>{
    const imgData = canvas.toDataURL('image/png');
    const imgWidth = 595.28;
    const pageHeight = 841.89;
    const imgHeight = (canvas.height*imgWidth)/canvas.width;
    let heightLeft = imgHeight, position=0;
    pdf.addImage(imgData,'PNG',0,position,imgWidth,imgHeight);
    heightLeft -= pageHeight;
    while(heightLeft>0){
      position = heightLeft - imgHeight;
      pdf.addPage();
      pdf.addImage(imgData,'PNG',0,position,imgWidth,imgHeight);
      heightLeft -= pageHeight;
    }
    pdf.save('resume.pdf');

    // Show buttons again after download
    buttons.forEach(btn => btn.style.display = 'inline-block');
  });
}
