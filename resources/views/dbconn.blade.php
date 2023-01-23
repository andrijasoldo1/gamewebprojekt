<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

<?php

   if(DB::connection()->getPdo()){
    echo "blabla",DB::connection()->getDatabaseName();
}
?>

</body>
</html>