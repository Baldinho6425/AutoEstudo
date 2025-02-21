<?php
// Laços de Repetição
$numeros = [1, 2, 3, 4, 5];

// Usando o laço for
echo "Usando o laço for:<br>";
for ($i = 0; $i < count($numeros); $i++) {
    echo "Número: " . $numeros[$i] . "<br>";
}

// Usando o laço foreach
echo "Usando o laço foreach:<br>";
foreach ($numeros as $numero) {
    echo "Número: " . $numero . "<br>";
}
?>
