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



// Fonction pour récupérer tous les étudiants
function find_all_students(): array {
    global $pdo; // Utilisez la connexion PDO définie dans votre fichier de connexion
    $query = $pdo->prepare("SELECT * FROM student");
    $query->execute();
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

// Appeler la fonction pour récupérer les étudiants
$students = find_all_students();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des étudiants</title>
</head>
<body>
    <h1>Liste des étudiants</h1>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Grade</th>
                <th>Prénom</th>
                <th>Email</th>
                <th>Anniversaire</th>
                <th>Genre</th>
                <!-- Ajoutez d'autres colonnes au besoin -->
            </tr>
        </thead>
        <tbody>
            <?php foreach ($students as $student) : ?>
                <tr>
                    <td><?= $student['id']; ?></td>
                    <td><?= $student['grade_id']; ?></td>
                    <td><?= $student['fullname']; ?></td>
                    <td><?= $student['email']; ?></td>
                    <td><?= $student['birthdate']; ?></td>
                    <td><?= $student['gender']; ?></td>
                    <!-- Ajoutez d'autres colonnes au besoin -->
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
