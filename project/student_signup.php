<?php
include('db_connect.php');

$username  = trim(mysqli_real_escape_string($conn, $_POST['username']));
$firstname = trim(mysqli_real_escape_string($conn, $_POST['firstname']));
$lastname  = trim(mysqli_real_escape_string($conn, $_POST['lastname']));
$class_id  = trim(mysqli_real_escape_string($conn, $_POST['class_id']));
$password  = trim(mysqli_real_escape_string($conn, $_POST['password']));

if(empty($username) || empty($firstname) || empty($lastname) || empty($class_id) || empty($password)){
    echo 'false';
    exit;
}

// Check if username already exists
$query = mysqli_query($conn, "SELECT * FROM student WHERE username='$username'");
if(mysqli_num_rows($query) > 0){
    echo 'false';
    exit;
}

// Insert new student
$sql = "INSERT INTO student (firstname, lastname, class_id, username, password, location, status)
        VALUES ('$firstname', '$lastname', '$class_id', '$username', '$password', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered')";

if(mysqli_query($conn, $sql)){
    echo 'true';
} else {
    echo 'false';
}
?>