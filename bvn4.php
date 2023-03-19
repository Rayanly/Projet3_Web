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
// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    
        $typo="Candidat";
    
    // Check if the file was uploaded without errors
    if (isset($_FILES["cv"]) && $_FILES["cv"]["error"] == 0) {
        // Get the file information
        $fileName = basename($_FILES["cv"]["name"]);
        $fileType = $_FILES["cv"]["type"];
        $fileSize = $_FILES["cv"]["size"];
        $fileContent = file_get_contents($_FILES["cv"]["tmp_name"]);

        // Connect to the database
        $dsn = 'mysql:host=localhost;dbname=new_db_1;charset=utf8';
        $username = 'root';
        $password = '';
        $options = array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        );
        try {
            $cnx = new PDO($dsn, $username, $password, $options);
        } catch (PDOException $e) {
            echo 'Connection failed: ' . $e->getMessage();
            exit;
        }

        // Insert the file into the database
        $stmt = $cnx->prepare('INSERT INTO `cv_cand` (typo, file_name, file_type, file_size, file_content) VALUES (:typo, :file_name, :file_type, :file_size, :file_content)');
        $stmt->bindParam(':typo', $typo);
        $stmt->bindParam(':file_name', $fileName);
        $stmt->bindParam(':file_type', $fileType);
        $stmt->bindParam(':file_size', $fileSize);
        $stmt->bindParam(':file_content', $fileContent, PDO::PARAM_LOB);
        $stmt->execute();

        // Close the database connection
        $cnx = null;

        // Display a success message
        echo "<br>The file '$fileName' was uploaded successfully.";
    } else {
        // Display an error message
        echo "Sorry, there was an error uploading your file.";
    }
}
?>
