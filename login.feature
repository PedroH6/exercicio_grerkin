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
