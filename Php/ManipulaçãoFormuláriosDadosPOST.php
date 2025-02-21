<?php
// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    echo "Nome: " . $nome . "<br>";
    echo "Email: " . $email . "<br>";
}
?>

<!-- Formulário HTML -->
<form method="POST" action="">
    Nome: <input type="text" name="nome"><br>
    Email: <input type="email" name="email"><br>
    <input type="submit" value="Enviar">
</form>
