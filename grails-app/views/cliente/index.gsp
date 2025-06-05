<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastro de Cliente</title>

    <asset:stylesheet src="cliente.css" />
    <asset:javascript src="cliente.js" />
</head>
<body>

    <form action="/cliente/salvar" method="post">
        <h2>Cadastro de Cliente</h2>

        <% if (flash.message) { %>
            <p class="success">${flash.message}</p>
        <% } %>

        <input type="text" name="nome" placeholder="Nome" required />
        <input type="text" name="cpf" placeholder="CPF" required />
        <input type="text" name="telefone" placeholder="Telefone" required />

        <input type="text" id="cep" name="cep" placeholder="CEP" required onblur="buscarEnderecoPorCEP()" />
        <input type="text" id="endereco" name="endereco" placeholder="Endereço" required />
        <input type="text" id="bairro" name="bairro" placeholder="Bairro" required />
        <input type="text" id="cidade" name="cidade" placeholder="Cidade" required />
        <input type="text" id="estado" name="estado" placeholder="Estado" required />

        <input type="submit" value="Enviar" />
    </form>

</body>
</html>
