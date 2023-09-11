<?php
$host = "localhost"; // Adresse du serveur MySQL
$dbname = "lp_official"; // Nom de votre base de données
$username = "root"; // Nom d'utilisateur MySQL
$password = "azerty"; // Mot de passe MySQL

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Configurer PDO pour générer des exceptions en cas d'erreur
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Gérer les erreurs de connexion ici
    die("Erreur de connexion à la base de données : " . $e->getMessage());
}


// Fonction pour insérer un nouvel étudiant dans la base de données
function insert_student($email, $fullname, $gender, $birthdate, $grade_id) {
    global $pdo; // Utilisez la connexion PDO définie dans votre fichier de connexion
    $query = $pdo->prepare("INSERT INTO student (email, fullname, gender, birthdate, grade_id) VALUES (:email, :fullname, :gender, :birthdate, :grade_id)");
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':fullname', $fullname, PDO::PARAM_STR);
    $query->bindParam(':gender', $gender, PDO::PARAM_STR);
    $query->bindParam(':birthdate', $birthdate, PDO::PARAM_STR);
    $query->bindParam(':grade_id', $grade_id, PDO::PARAM_INT);
    return $query->execute();
}

// Traitement du formulaire
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['input-email'];
    $fullname = $_POST['input-fullname'];
    $gender = $_POST['input-gender'];
    $birthdate = $_POST['input-birthdate'];
    $grade_id = $_POST['input-grade_id'];

    $inserted = insert_student($email, $fullname, $gender, $birthdate, $grade_id);

    if ($inserted) {
        $success_message = "Étudiant inséré avec succès !";
    } else {
        $error_message = "Erreur lors de l'insertion de l'étudiant.";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un nouvel étudiant</title>
</head>
<body>
    <h1>Ajouter un nouvel étudiant</h1>

    <?php if (isset($success_message)) : ?>
        <p style="color: green;"><?= $success_message; ?></p>
    <?php endif; ?>

    <?php if (isset($error_message)) : ?>
        <p style="color: red;"><?= $error_message; ?></p>
    <?php endif; ?>

    <form method="post" action="index.php">
        <label for="input-email">E-mail :</label>
        <input type="email" id="input-email" name="input-email" required>

        <label for="input-fullname">Nom complet :</label>
        <input type="text" id="input-fullname" name="input-fullname" required>

        <label for="input-gender">Genre :</label>
        <select id="input-gender" name="input-gender" required>
            <option value="male">Homme</option>
            <option value="female">Femme</option>
        </select>

        <label for="input-birthdate">Date de naissance :</label>
        <input type="date" id="input-birthdate" name="input-birthdate" required>

        <label for="input-grade_id">ID de la classe :</label>
        <input type="number" id="input-grade_id" name="
