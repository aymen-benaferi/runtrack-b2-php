<?php

function my_is_prime(int $number): bool {
    if ($number <= 1) {
        return false; // Les nombres inférieurs ou égaux à 1 ne sont pas premiers
    }

    for ($i = 2; $i * $i <= $number; $i++) {
        if ($number % $i === 0) {
            return false; // Le nombre est divisible par $i, donc il n'est pas premier
        }
    }

    return true; // Si on n'a pas trouvé de diviseur, le nombre est premier
}

// Exemple d'utilisation de la fonction
$number = 17; // Vous pouvez remplacer ce nombre par celui que vous souhaitez vérifier

if (my_is_prime($number)) {
    echo "$number est un nombre premier.";
} else {
    echo "$number n'est pas un nombre premier.";
}

?>
