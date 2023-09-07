<?php

function my_fizz_buzz(int $length): array {
    $result = [];

    for ($i = 1; $i <= $length; $i++) {
        if ($i % 3 === 0 && $i % 5 === 0) {
            $result[] = "FizzBuzz";
        } elseif ($i % 3 === 0) {
            $result[] = "Fizz";
        } elseif ($i % 5 === 0) {
            $result[] = "Buzz";
        } else {
            $result[] = $i;
        }
    }

    return $result;
}

// Exemple d'utilisation de la fonction
$length = 15; // Vous pouvez choisir la longueur souhaitée
$fizzBuzzArray = my_fizz_buzz($length);

// Affichage du tableau
foreach ($fizzBuzzArray as $value) {
    echo $value . " ";
}

?>
