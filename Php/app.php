<?php
// Função para processar os dados enviados via POST
function processarDados($nome, $idade) {
    // Criando uma variável para armazenar a mensagem
    $mensagem = "Olá, $nome! Você tem $idade anos.";
    return $mensagem;
}

// Verificando se o formulário foi enviado via POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recebendo os dados enviados via POST
    $nome = $_POST['nome'];
    $idade = $_POST['idade'];
    
    // Chama a função e armazena o resultado
    $mensagem = processarDados($nome, $idade);
    
    // Exibe a mensagem processada
    echo $mensagem;
}
?>

<!-- Formulário HTML para enviar os dados -->
<form method="POST">
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" required><br><br>

    <label for="idade">Idade:</label>
    <input type="number" id="idade" name="idade" required><br><br>

    <input type="submit" value="Enviar">
</form>

<!-- Exemplo de laço de repetição para exibir números de 1 a 5 -->
<h3>Contagem de 1 a 5:</h3>
<ul>
<?php
for ($i = 1; $i <= 5; $i++) {
    echo "<li> Número $i </li>";
}
?>
</ul>
