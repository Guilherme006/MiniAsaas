# Mini Asaas 

## Descrição do Projeto

O **Mini Asaas** é um sistema completo de gerenciamento de cobranças de clientes. Trata-se de uma aplicação real de gestão financeira, permitindo cadastrar, atualizar, listar e remover cobranças, além de vincular essas cobranças a clientes pagadores.

A aplicação integra frontend, backend e banco de dados, seguindo boas práticas de desenvolvimento web, organização de código e controle de versões com Git e GitHub.

## Funcionalidades

- Cadastro de cobranças com valor, descrição e data de vencimento
- Associação de cobrança a um cliente pagador (dono)
- Atualização e exclusão de cobranças
- Consulta de cobranças com filtros por valor, data ou tipo
- Listagem de clientes com maiores valores recebidos
- Cadastro de clientes com formulário web
- Integração com a API [ViaCEP](https://viacep.com.br/) para preenchimento automático de endereço
- Interface web responsiva

## Tecnologias Utilizadas

- **Frontend:** Grails 5
- **Backend:** Java
- **Banco de Dados:** MySQL
- **API Externa:** ViaCEP
- **Controle de Versão:** Git + GitHub

## Estrutura do Projeto

### Banco de Dados
- Modelagem de entidades: cobrança, cliente e relacionamento entre elas
- Scripts SQL para criação e consultas com:
  - Filtros por valor (`> R$1000,00`)
  - Agrupamentos por tipo de cobrança
  - Ordenações por data de aprovação

### Frontend
- Página de cadastro com campos como nome, CPF, telefone, endereço e CEP
- Validações básicas no formulário
- Requisições assíncronas para a API ViaCEP
- Exibição de mensagem de sucesso no console
- Design responsivo (mobile-first)

## Objetivo

Este projeto foi desenvolvido como parte de um exercício do estágio no Asaas com o propósito de praticar:

- Versionamento com Git e GitHub
- Estruturação de projetos com separação de responsabilidades
- Criação de sistemas CRUD com formulário web
- Consumo de APIs públicas (ViaCEP)
- Modelagem de banco de dados e escrita de consultas SQL
- Responsividade e usabilidade de interfaces web

## Desenvolvedor

**Guilherme Felippe Lazari**  
Estagiário de Engenharia de Software
