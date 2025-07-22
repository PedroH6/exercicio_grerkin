Feature: Tela de Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que eu acesse a página de checkout

    Scenario: cadastro obrigatório
        When eu digitar em todos os campos com "*"
        And clicar no botão "finalizar compra"
        Then finalizar a compra


    Scenario: Campo de email
        When eu tentar finalizar um email com com formato inválido
        Then deve aparecer um mensagem de erro


    Scenario: Campos vazios
        When eu tentar cadastrar com um campo vazio
        Then deve aparecer um mensagem de alerta

