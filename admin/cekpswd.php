<?php
session_start();
include "../koneksi.php";
$username = $_POST['username'];
$password = $_POST['password'];

if (trim($username)=="") {
	///include "login2.php"; 
	echo "<div align=center><b>Nama Belum diisi !!</b><br>";
	echo "Harap diisi terlebih dahulu</div>";
	exit;
}
elseif (trim($password)=="") {
	//include "login3.php"; 
	echo "<div align=center><b>Password Belum diisi !!</b><br>";
	echo "Harap diisi terlebih dahulu</div>";
	exit;
}
$passwordhash = md5($password);  // mengenkripsikannya untuk dicocokan dengan database
$perintahnya = "select username, password from login where username = '$username' and PASSWORD = '$password'";
$jalankanperintahnya = mysql_query($perintahnya);
$ada_apa_enggak = mysql_num_rows($jalankanperintahnya);
if ($ada_apa_enggak >= 1 )
{
	//$SES_USER = $username;
	//session_register ("SES_USER");
	//$_SESSION['username'] = $username;
echo "<meta http-equiv='refresh' content='0; url=haladmin.php?top=home.php'>";
}
else
echo "<div align=center><font color='red'>Username dan Password tidak sesuai</font></div>";
echo "<div align=center><a href='index.php'>Coba Lagi</a></div>";        
?>