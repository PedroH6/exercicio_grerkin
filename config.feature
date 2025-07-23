#language: pt

Funcionalidade: Tela de configurar produto   
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que eu acesse a configurar produto

    Cenário: Seleções de cores
    Quando eu selecionar uma cor
    Então tamanho e quantidade devem ser obrigatórios

    Cenário: permição de produtos
    Quando eu selecionar 10 produtos
    Então permitir venda
    
    Cenário: permição de produtos inválido
    Quando passar de 10 produtos
    Então mensagem de aviso

    Scenario: limpar produtos
    Quando eu clicar no botão limpar
    Então deve voltar ao estado original 

