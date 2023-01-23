<?php



if(isset($_POST['submit'])){

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));
   $cpass = mysqli_real_escape_string($conn, md5($_POST['cpassword']));
   $user_type = mysqli_real_escape_string($conn, $_POST['user_type']); 
   $broj = mysqli_real_escape_string($conn, $_POST['broj']);
   $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE email = '$email' AND password = '$pass'") or die('query failed');

   if(mysqli_num_rows($select) > 0){
      $message[] = 'user already exist!';
   }else{
      mysqli_query($conn, "INSERT INTO `user_form`(name, email, password, user_type, broj) VALUES('$name', '$email', '$pass','$user_type', '$broj')") or die('query failed');
      $message[] = 'registered successfully!';
      header('location:login');
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Registracija</title>

   <link rel="stylesheet" href="/css/css.css">
   <link rel="stylesheet" href="/css/style.css">
   

</head>
<body background="/img/pozadina.jpg">

<?php
if(isset($message)){
   foreach($message as $message){
      echo '<div class="message" onclick="this.remove();">'.$message.'</div>';
   }
}
?>
   
<div class="form-container">

   <form action="" method="post">
      <h3>Registriraj se</h3>
      <input type="text" name="name" required placeholder="Unesi username" class="box">
      <input type="email" name="email" required placeholder="Unesi email" class="box">
      <input type="password" name="password" required placeholder="Unesi sifru" class="box">
      <input type="password" name="cpassword" required placeholder="Potvrdi sifru" class="box">
      <input type="text" name="broj" required placeholder="Unesi broj" class="box">
      <input type="submit" name="submit" class="btn" value="Registriraj se">
      <select name="user_type">
         <option value="user">user</option>
         <option value="admin">admin</option>
         <option value="superadmin">superadmin</option>
      </select>
      <p>Imate korisnici racun? <a href="login">Prijavi se</a></p>
   </form>

</div>

</body>
</html>