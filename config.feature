Feature: Tela de configurar produto   
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu acesse a configurar produto

    Scenario: Seleções de cores
    When eu selecionar uma cor
    Then tamanho e tamanho e quantidade devem ser obrigatórios

    Scenario: permição de produtos
    When eu selecionar 10 produtos
    Then permitir venda
    But se passar de 10 produtos
    Then mensagem de aviso

    Scenario: limpar produtos
    When eu clicar no botão limpar
    Then deve voltar ao estado original 

