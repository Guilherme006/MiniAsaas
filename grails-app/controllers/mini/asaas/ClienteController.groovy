package mini.asaas

class ClienteController {

    def index() {}

    def salvar() {
        println "Nome: ${params.nome}"
        println "CPF: ${params.cpf}"
        println "Telefone: ${params.telefone}"
        println "CEP: ${params.cep}"
        println "Endereço: ${params.endereco}"
        println "Bairro: ${params.bairro}"
        println "Cidade: ${params.cidade}"
        println "Estado: ${params.estado}"

        flash.message = "Formulário enviado com sucesso!"
        redirect(action: "index")
    }
}
