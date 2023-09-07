<?php

function my_str_search(string $needle, string $haystack): int {
    $count = 0;
    $haystackLength = strlen($haystack);

    for ($i = 0; $i < $haystackLength; $i++) {
        if ($haystack[$i] === $needle) {
            $count++;
        }
    }

    return $count;
}

// Exemple d'utilisation de la fonction
$phrase = "Bonjour, je m'appelle aymen";
$lettre = "e";

$resultat = my_str_search($lettre, $phrase);

echo "Le nombre d'occurrences de '$lettre' dans la phrase est : $resultat";

?>
