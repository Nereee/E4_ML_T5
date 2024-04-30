<?php
session_start();

if(isset($_POST['izena']) && $_POST['pasahitza']){
    $servername = 'localhost';
    $username = $_POST["izena"];
    $password = $_POST["pasahitza"];
    $db = "db_spotify5";

    // Konexioa sortu
    $mysqli = new mysqli("localhost","bezero","bezPass ",$db);

    // Konexioa egiaztatu
    if ($mysqli->connect_error) {

    } else {
        header("Location: main.html");
        exit(); 
    }
}
?>

<!DOCTYPE html>
<html lang="eu">

<head>
    <title>Elorrietamusic - WEBGUNEA</title>
    <meta charset="UTF-8">
    <meta name="author" content="5.taldea">
    <meta name="keywords" content="Login, Login egitea">
    <meta name="description" content="login egiteko gunea">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href = "../Css/style.css">
    <link rel = "stylesheet" href = "../Css/loginstyle.css">
    <!-- Nunito letra mota -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap">
</head>

<body>
    <!-- Headerra eta bere nav barruan kategoriekin -->
    <nav id="menua">
        <ul>
            <li><img src="../IMG/logo1.png" alt="ElorrietaZinema logo"></li>
            <li><a href="../index.html">EXIT</a></li>
        </ul>
    </nav>
    <main class="mainlog"> 
    <form action="login.php" method="post" id="logform">
        <strong><p class="caption">SAIOA HASI</p></strong>
        <ul>
            <li>
                <label for="izena">Erabiltzailea : </label>
                <input type="text" id="izena" name="izena" placeholder="Idatzi hemen zure erabiltzailearen izena" required>
            </li>

            <li>
                <label for="pasahitza">Pasahitza : </label>
                <input type="password" id="pasahitza" name="pasahitza" placeholder="Idatzi zure pasahitza" required>
            </li>

        </ul>

        <input type="submit" name="BIDALI" value="SAIOA HASI" onclick="logeatu()">
    </form>
    </main>
    <!-- Footerra zinemaren informazioarekin eta lokalizazioa -->
    <footer>
        <div id="footertext">
            <p>
                Agirre Lehendakariaren Etorb., 184
                48015 - Bilbo
                Autobusa: 70,46.
                Metroa: San Ignazio, Asturias irteera <br>
                Telefonoa: 944 02 80 00 <br>
                Email: elorrietazinema@gmail.com
            </p>
        </div>
        <div id="saresozialak">
            <a href="https://www.instagram.com/" target="_blank"><img class="szicon"
                    src="../IMG/instagram_icon_146245.png" alt="Instagram logo"></a>
            <a href="https://twitter.com/?lang=es" target="_blank"><img class="szicon" src="../IMG/X.jpg"
                    alt="X logo"></a>
        </div>
    </footer>

</body>

</html>