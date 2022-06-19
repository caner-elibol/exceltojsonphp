<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "exceltojson";

// Create connection
$conn = new mysqli($servername, $username, $password,$db);
$conn -> set_charset("utf8");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
function tum_bosluklari_temizle($metin)
{
    $metin = str_replace("/s+/", "", $metin);
    $metin = str_replace(" ", "", $metin);
    $metin = str_replace(" ", "", $metin);
    $metin = str_replace(" ", "", $metin);
    $metin = str_replace("/s/g", "", $metin);
    $metin = str_replace("/s+/g", "", $metin);
    $metin = trim($metin);
    return $metin;
}

$dosya=file_get_contents("x.json"); 
$i=0;
// foreach (json_decode($dosya,true) as $key => $value) {
//     foreach ($value as $key => $value) {
//         foreach ($value as $att => $deger) {
//             if($att=="id"){
//                 $kacakat_uuid=$deger;
//             }
//             if($att=="psw2"){
//                 $user_password=md5(md5($deger));
//             }
//             if($att=="name"){
//                 $user_name=$deger;
//             }
//             if($att=="gsm"){
//                 $user_gsm=tum_bosluklari_temizle(ltrim($deger,"0"));
//             }
//             if($att=="mail"){
//                 $user_mail=$deger;
//             }

//         }
//         if(mysqli_num_rows($conn->query("SELECT * FROM `bg_users` WHERE `user_name` = '".$user_name."'"))>0){
//             $i++;
//             echo "Bu zaten eklendi".$i." ".$user_name."<br>";
//         }else{
//             $conn->query("INSERT INTO `bg_users`(
//                 `user_name`, 
//                 `user_password`, 
//                 `user_email`, 
//                 `user_gsm`,
//                 `kacakat_uuid`

//                 ) VALUES(
//                     '".$user_name."',
//                     '".$user_password."',
//                     '".$user_mail."',
//                     '".$user_gsm."',
//                     '".$kacakat_uuid."');");
//         }
        
        
//     }
// }
foreach (json_decode($dosya,true) as $key => $value) {
    foreach ($value as $key => $value) {
        foreach ($value as $att => $deger) {
            if($att=="id"){
                $kacakat_uuid=$deger;
            }
            else if($att=="date"){
                $add_date=$deger;
            }  
            else if($att=="group"){
                $group=$deger;
            }
            else if($att=="name"){
                $user_name=$deger;
            }
            
        }if($add_date>0){
            if(mysqli_num_rows($conn->query("SELECT * FROM `bg_users` WHERE `kacakat_uuid` = ".$kacakat_uuid.""))>0){
                $i++;
                echo "Eklendi Düzenlendi.".$i." ".$user_name."<br>";
                $conn->query("UPDATE `bg_users` SET `user_groups` = '.2', `user_day` = '".$add_date."' WHERE `bg_users`.`kacakat_uuid` = ".$kacakat_uuid.";");
            }
        }       
    }
}

//https://beautifytools.com/excel-to-json-converter.php
?>