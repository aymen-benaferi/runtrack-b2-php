<?php
// Définition de la fonction my_is_multiple()
function my_is_multiple(int $divider, int $multiple): bool {
    // Vérifier si le reste de la division de $multiple par $divider est égal à zéro
    // Si c'est le cas, $multiple est un multiple de $divider, sinon ce n'est pas le cas
    return ($multiple % $divider) === 0;
}

// Exemple d'utilisation de la fonction
$divider = 20;
$multiple = 5;

if (my_is_multiple($divider, $multiple)) {
    echo "$multiple est un multiple de $divider.";
} else {
    echo "$multiple n'est pas un multiple de $divider.";
}
?>
