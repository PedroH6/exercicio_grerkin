#language: pt
Feature: Tela de Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que eu acesse a página de checkout

    Cenário: cadastro obrigatório
        Quando eu digitar em todos os campos com "*"
        E clicar no botão "finalizar compra"
        Então finalizar a compra


    Cenário: Campo de email
        Quando eu tentar finalizar um email com com formato inválido
        Então deve aparecer um mensagem de erro


    Scenario: Campos vazios
        Quando eu tentar cadastrar com um campo vazio
        Então deve aparecer um mensagem de alerta

