<?php
// Função simples
function saudacao($nome) {
    return "Olá, " . $nome . "!";
}

$mensagem = saudacao("Ana");
echo $mensagem . "<br>";

// Função com parâmetros e valor de retorno
function soma($a, $b) {
    return $a + $b;
}

$resultado = soma(5, 3);
echo "Resultado da soma: " . $resultado . "<br>";
?>
