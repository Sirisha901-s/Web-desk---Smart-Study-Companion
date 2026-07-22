<form id="signin_student" class="form-signin" method="post">
    <h3 class="form-signin-heading">Sign up as Student</h3>
    <input type="text" id="username" name="username" placeholder="Username" required>
    <input type="text" id="firstname" name="firstname" placeholder="Firstname" required>
    <input type="text" id="lastname" name="lastname" placeholder="Lastname" required>
    
    <label>Class</label>
    <select name="class_id" id="class_id" required>
        <option value="">Select Class</option>
        <?php
        include('db_connect.php');
        $query = mysqli_query($conn,"SELECT * FROM class ORDER BY class_name");
        while($row = mysqli_fetch_array($query)){
            echo "<option value='".$row['class_id']."'>".$row['class_name']."</option>";
        }
        ?>
    </select>
    
    <input type="password" id="password" name="password" placeholder="Password" required>
    <input type="password" id="cpassword" name="cpassword" placeholder="Re-type Password" required>
    <button type="submit">Sign Up</button>
</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
jQuery(document).ready(function(){
    jQuery("#signin_student").submit(function(e){
        e.preventDefault();

        var password = jQuery('#password').val();
        var cpassword = jQuery('#cpassword').val();
        if(password != cpassword){
            alert("Passwords do not match");
            return;
        }

        var formData = jQuery(this).serialize();
        $.ajax({
            type: "POST",
            url: "student_signup.php",
            data: formData,
            success: function(response){
                if(response=='true'){
                    alert("Sign up success!");
                    window.location = 'dashboard_student.php';
                } else {
                    alert("Sign up failed: username may already exist or error in database.");
                }
            },
            error: function(){
                alert("AJAX error. Please check your PHP file.");
            }
        });
    });
});
</script>