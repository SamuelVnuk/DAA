<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="loginPage.css">
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">

        <title> Login </title>
</head>
<body>
    <p> Vitaj na stranke, zadaj meno a heslo a prihlas sa. </p>

    <form method = "POST" action="login.php">
    
    <div class = "container">
    
    <label for= "meno"><br>Prihlasovacie meno</br></label>
        <input name = "meno" type= "text" /><br />
    
    <label for= "heslo"><br>Heslo</br></label>
        <input name = "heslo" type= "text" /><br />
        
        <input type = "submit" value= "check" />
    </form>
</body>
