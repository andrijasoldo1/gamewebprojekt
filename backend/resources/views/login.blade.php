<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Prijava</title>

   <!-- custom css file link  -->
   <style>
  <?php include "style.css" ?>
</style>
<style>
  <?php include "css.css" ?>
</style>
</head>
<body background="pozadina.jpg">

@if(session()->has('message'))
   <div class="message" onclick="this.remove();">{{ session()->get('message') }}</div>
@endif
   
<div class="form-container">
   <form action="{{ route('login') }}" method="post">
      @csrf
      <h3>Prijavi se</h3>
      <input type="email" name="email" required placeholder="Unesi email" class="box">
      <input type="password" name="password" required placeholder="Unesi sifru" class="box">
      <input type="submit" name="submit" class="btn" value="Prijavi se">
      <p>Nemate korisnicki racun? <a href="{{ route('register') }}">Registriraj se</a></p>
   </form>
</div>
</body>
</html>
