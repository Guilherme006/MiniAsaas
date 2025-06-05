function buscarEnderecoPorCEP() {
    const cep = document.getElementById("cep").value.replace(/\D/g, '');
    if (cep.length === 8) {
        fetch(`https://viacep.com.br/ws/${cep}/json/`)
            .then(res => res.json())
            .then(data => {
                if (!data.erro) {
                    document.getElementById("endereco").value = data.logradouro || '';
                    document.getElementById("bairro").value = data.bairro || '';
                    document.getElementById("cidade").value = data.localidade || '';
                    document.getElementById("estado").value = data.uf || '';
                }
            })
            .catch(err => console.error("Erro ao buscar o CEP: ", err));
    }
}
