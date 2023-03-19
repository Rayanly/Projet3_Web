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

echo "<br>bvnnn<br>";


    if(isset($_POST['candi']) ){
     $typo=$_POST['candi'];
    echo "candi <br>";}
    
 if (isset($_POST['maker'])){
    echo "maker<br>";

    
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$cni=filter_input(INPUT_POST,"cni",FILTER_SANITIZE_STRING);
$genre=$_POST['genre'];
//$cni=$_POST['cni'];
//echo filter_var($cni,FILTER_SANITIZE_STRING);
$date=$_POST["date"];
$pays=$_POST["pays"];
$email=filter_input(INPUT_POST,"email",FILTER_SANITIZE_EMAIL);
//$email=filter_input(INPUT_POST,"email",FILTER_VALIDATE_EMAIL);

//$tel=$_POST["Tel"];
//$categ=$_POST["categ"];
$dip=$_POST["diplome"];
$dom=$_POST["domaine"];

//var_dump($nom, $prenom,$cni,$genre,$pays,$email,$typo,$dip,$dom);

echo " bienvenue ". $prenom ." " .$nom. " dans notre site web <br>";

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

if($typo=="Candidat"){
    

    $sql="SELECT * FROM `candi` WHERE CNI=?";
    $query=$cnx->prepare($sql);
    $query->execute([$cni]);
    $res=$query->rowCount();
    if($res>0){
       echo "<span class='text-danger'> <br> Votre Candidature deja existe<br> </span>";
       $sql3 = "SELECT * FROM `candi` ORDER By id DESC LIMIT 1";
       $stmt = $cnx->query($sql3);
       
           $data = $stmt->fetch(PDO::FETCH_ASSOC);
       
       // Display data on page
       echo"<br>Vos données:<br>";
         echo 'CNI: ' . $data['CNI'] . '<br>';
         echo 'Nom: ' . $data['Nom'] . '<br>';
         echo 'Prenom: ' . $data['Prenom'] . '<br><br>';
         echo 'Genre: ' . $data['Genre'] . '<br>';
         echo 'Pays: ' . $data['Pays'] . '<br>';
         echo 'Email: ' . $data['Email'] . '<br><br>';
         echo 'Type: ' . $data['Type'] . '<br>';
         echo 'Niveau: ' . $data['Diplome'] . '<br>';
         echo 'Domaine: ' . $data['Domaine'] . '<br><br>';
    exit();
    }
    else{
        echo"<span class='text-successful'><br> Bienvenue nouveau Candidat  </span>";
    }

$sql1= "INSERT INTO `candi`(`CNI`, `Nom`, `Prenom`, `Genre`, `Pays`, `Email`, `Type`, `Diplome`, `Domaine`)
VALUES(:CNI,:Nom,:Prenom,:Genre,:Pays,:Email,:Type,:Diplome,:Domaine)";
$res=$cnx->prepare($sql1);
$exe=$res->execute(array(":CNI"=>$cni,":Nom"=>$nom,":Prenom"=>$prenom, ":Genre"=>$genre,":Pays"=>$pays,":Email"=>$email,":Type"=>$typo,":Diplome"=>$dip,":Domaine"=>$dom));
if($exe){
echo "<br>Insertion Successful dans candidats<br>";
$sql3 = "SELECT * FROM `candi` ORDER By id DESC LIMIT 1";
$stmt = $cnx->query($sql3);

    $data = $stmt->fetch(PDO::FETCH_ASSOC);

// Display data on page
echo"<br>Vos données:<br>";
  echo 'CNI: ' . $data['CNI'] . '<br>';
  echo 'Nom: ' . $data['Nom'] . '<br>';
  echo 'Prenom: ' . $data['Prenom'] . '<br><br>';
  echo 'Genre: ' . $data['Genre'] . '<br>';
  echo 'Pays: ' . $data['Pays'] . '<br>';
  echo 'Email: ' . $data['Email'] . '<br><br>';
  echo 'Type: ' . $data['Type'] . '<br>';
  echo 'Niveau: ' . $data['Diplome'] . '<br>';
  echo 'Domaine: ' . $data['Domaine'] . '<br><br>';
}
else {
echo"<br>Insertion Failed dans candidats";}

}}
?>


    

