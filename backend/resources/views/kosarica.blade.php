<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Kosarica</title>

   <link rel="stylesheet" href="/css/css.css">">
   <link rel="stylesheet" href="/css/style.css">">
   <style>
  
</style>
<style>
 
</style>

</head>
<body background="/img/pozadina.jpg">   
<?php
if(isset($message)){
   foreach($message as $message){
      echo '<div class="message" onclick="this.remove();">'.$message.'</div>';
   }
}
?>

<div class="container">

<div id="k_prvi">
        <div id="gameweb"><img src="/img/zonelogo.png" alt="GameWeb logo" width="200px" height="70px"></div>
        <div class="kartica"><a href="index" id="rubrika1">Početna</a></div>
        <div class="kartica"><a href="prvastranica">Proizvodi</a></div>
        <div class="kartica"><a href="drugastranica" id="rubrika3">O projektu</a></div>
        <div class="kartica"><a href="kosarica">Košarica<img src="/img/shopping-cart-svg-png-icon-download-28.png" width="20" height="20"></a></div>
        <div class="kartica"><a href="korisnici">Korisnici</a> </div>
        <div class="kartica"><a href="editor">Editor</a> </div>
                    <div class="kartica">
                            <a href="login" id="rubrika4">Prijava</a>
        </div>




<div class="shopping-cart">

   <h1 class="heading">shopping cart</h1>

   <table>
      <thead>
         <th>image</th>
         <th>name</th>
         <th>price</th>
         <th>quantity</th>
         <th>total price</th>
         <th>action</th>
      </thead>
      <tbody>
      

</div>

</div>

</body>
</html>