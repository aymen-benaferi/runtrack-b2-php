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


// Fonction pour récupérer un étudiant en fonction de l'e-mail
function find_one_student($email) {
    global $pdo; // Utilisez la connexion PDO définie dans votre fichier de connexion
    $query = $pdo->prepare("SELECT * FROM student WHERE email = :email");
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->execute();
    return $query->fetch(PDO::FETCH_ASSOC);
}

// Traitement du formulaire
if (isset($_GET['input-email-student'])) {
    $email = $_GET['input-email-student'];
    $student = find_one_student($email);
}

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rechercher un étudiant par e-mail</title>
</head>
<body>
    <h1>Rechercher un étudiant par e-mail</h1>

    <form method="get" action="index.php">
        <label for="input-email-student">E-mail de l'étudiant :</label>
        <input type="text" id="input-email-student" name="input-email-student">
        <button type="submit">Rechercher</button>
    </form>

    <?php if (isset($student)) : ?>
        <h2>Informations de l'étudiant</h2>
        <?php if ($student) : ?>
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
                    <tr>

                        <td><?= $student['id']; ?></td>
                        <td><?= $student['grade_id']; ?></td>
                        <td><?= $student['fullname']; ?></td>
                        <td><?= $student['email']; ?></td>
                        <td><?= $student['birthdate']; ?></td>
                        <td><?= $student['gender']; ?></td>
                        <!-- Ajoutez d'autres colonnes au besoin -->
                    </tr>
                </tbody>
            </table>
        <?php else : ?>
            <p>Aucun étudiant trouvé avec cet e-mail.</p>
        <?php endif; ?>
    <?php endif; ?>
</body>
</html>
