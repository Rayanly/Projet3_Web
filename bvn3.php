<!doctype html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>formulaire Inscription</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<button align="center" name="back" ><a href="homepage.html">Retour à la page d'acceuil</a></button> 
</body>
</html>

<?php

echo "<br>bvnnn33333<br>";



if(isset($_POST['candi']) ){
$typo2=$_POST['candi'];
echo "rec<br>";}
  //  isset($_POST['profil']) || 
 if (isset($_POST['submit']) ){
    echo "profil<br>";

    
$cmpname=$_POST['cmpname'];
$adress=$_POST['adress'];
$city=filter_input(INPUT_POST,"city",FILTER_SANITIZE_STRING);
$web=$_POST['web'];
//$cmpname=$_POST['cni'];
//echo filter_var($cni,FILTER_SANITIZE_STRING);
$tel=$_POST["tel"];
$pays=$_POST["country"];
$email=filter_input(INPUT_POST,"email",FILTER_SANITIZE_EMAIL);
//$email=filter_input(INPUT_POST,"email",FILTER_VALIDATE_EMAIL);
$pos=$_POST["position"];
$categ=$_POST["jobcategory"];
//$tel=$_POST["Tel"];
//$categ=$_POST["categ"];

echo " bienvenue  " .$cmpname. " dans notre site web <br>";

$host="localhost";
$dbname="new_db_1";
$user="root";
$pass="";

$dsn="mysql:host=$host;dbname=$dbname";
try{
$cnx=new PDO($dsn,$user,$pass);
if($cnx)
echo "Connexion reussi a $dbname";
}
catch(PDOException $e){
$err=$e->getMessage();
echo $err;
exit();
}
if($typo2=="Recruteur"){
   

    $req="SELECT * FROM `recrut` WHERE cmpname=?";
$query=$cnx->prepare($req);
$query->execute([$cmpname]);
$resu=$query->rowCount();

if($resu>0){
   echo "<span class='text-danger'> <br> Recruteur deja existe <br><br> </span>";

   $sql3 = "SELECT * FROM `recrut` ORDER By id DESC LIMIT 1";
$stmt = $cnx->query($sql3);

    $data = $stmt->fetch(PDO::FETCH_ASSOC);

// Display data on page
echo"Vos données:<br>";
  echo 'cmpname: ' . $data['cmpname'] . '<br>';
  echo 'adress: ' . $data['adress'] . '<br>';
  echo 'pays: ' . $data['pays'] . '<br><br>';
  echo 'website: ' . $data['website'] . '<br>';
  echo 'city: ' . $data['city'] . '<br>';
  echo 'email: ' . $data['Email'] . '<br><br>';
  echo 'type: ' . $data['Type'] . '<br>';
  echo 'position: ' . $data['position'] . '<br>';
  echo 'category: ' . $data['category'] . '<br><br>';
    
exit();
}
else{
    echo"<span class='text-successful'><br> Bienvenue nouveau Recruteur <br> </span>";

   // var_dump($nom, $prenom,$cni,$genre,$pays,$email,$typo,$pos,$categ);
    $sql2= "INSERT INTO `recrut`(`cmpname`, `adress`, `pays`, `website`, `city`, `Email`, `Type`, `position`, `category`)
    VALUES(:cmpname,:adress,:pays,:website,:city,:Email,:Type,:position,:category)";
    $res2=$cnx->prepare($sql2);
    $exe2=$res2->execute(array(":cmpname"=>$cmpname,":adress"=>$adress,":pays"=>$pays, ":website"=>$web,":city"=>$city,":Email"=>$email,":Type"=>$typo2,":position"=>$pos,":category"=>$categ));
    if($exe2){
    echo "<br>Insertion Successful dans recruteurs <br>";}
    else {
    echo"<br>Insertion Failed dans recruteurs";}
    //$cnx=NULL;
    $sql3 = "SELECT * FROM `recrut` ORDER BY id DESC LIMIT 1";
$stmt = $cnx->query($sql3);

    $data = $stmt->fetch(PDO::FETCH_ASSOC);

// Display data on page
echo"Vos données:<br>";
  echo 'cmpname: ' . $data['cmpname'] . '<br>';
  echo 'adress: ' . $data['adress'] . '<br>';
  echo 'pays: ' . $data['pays'] . '<br><br>';
  echo 'website: ' . $data['website'] . '<br>';
  echo 'city: ' . $data['city'] . '<br>';
  echo 'email: ' . $data['Email'] . '<br><br>';
  echo 'type: ' . $data['Type'] . '<br>';
  echo 'position: ' . $data['position'] . '<br>';
  echo 'category: ' . $data['category'] . '<br><br>';
    }
}
    
}
  

?>


    

