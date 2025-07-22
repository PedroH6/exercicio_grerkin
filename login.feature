Feature: Tela de login

    Como Cliente da EBAC Shop
    Quero fazer login na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu acesse a página de login

    Scenario: Autenticação válida
        When eu digitar o usúario "usuarioEBACshop@gmail.com"
        And a senha "1234@EBAC"
        Then deve ser direcionato para tela de checkout

    Scenario: Autenticação inválido
        When eu digitar o usúario "usuarioEBACshop@gmail.com"
        And a senha "xxxxxsss@EBAC"
        Then deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Scenario Outline: Autenticar multiplos usuários
When eu digitar <usuário>
And a <senha>
Then deve exibir uma <mensagem> de sucesso
But se eu digitar <usuário>
And a <senha> errado
Then deve exibir uma <mensagem> de erro

Example:
|"usuario"|"senha"|"mensagem"|
|"usuarioEBACshop@gmail.com"|"1234@EBAC"|"tela de checkout"
|"usuarioEBACshop@gmail.com"|"xxxxxsss@EBAC"|"Usuário ou senha inválidos"