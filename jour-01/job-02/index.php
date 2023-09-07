<?php
// Définition de la fonction my_str_reverse()
function my_str_reverse(string $string): string {
    $string_inverse = ''; // Initialiser une chaîne vide pour stocker le résultat inversé

    // Parcourir la chaîne de caractères de la fin à l'envers
    for ($i = strlen($string) - 1; $i >= 0; $i--) {
        $string_inverse .= $string[$i]; // Ajouter chaque caractère à la chaîne inversée
    }

    // Retourner la chaîne inversée
    return $string_inverse;
}

// Exemple d'utilisation de la fonction
$chaine = "Bonjour je m'appelle aymen";
$chaine_inversee = my_str_reverse($chaine);
echo "Chaîne d'origine : $chaine<br>";
echo "Chaîne inversée : $chaine_inversee";
?>
