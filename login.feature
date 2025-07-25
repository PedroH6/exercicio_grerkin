#language: pt

Funcionalidade: Tela de login

    Como Cliente da EBAC Shop
    Quero fazer login na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que eu acesse a página de login

    Cenário: Autenticação válida
        Quando eu digitar o usúario "usuarioEBACshop@gmail.com"
        E a senha "1234@EBAC"
        Então deve ser direcionato para tela de checkout

    Cenário: Autenticação inválido
        Quando eu digitar o usúario "usuarioEBACshop@gmail.com"
        E a senha "xxxxxsss@EBAC"
        Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

    Esquema do cenário: Autenticação de usuário
        Quando eu digitar <usuário> e <senha>
        Então o sistema deve exibir uma <mensagem>

Example:
|"usuario"|"senha"|"mensagem"|
|"usuarioEBACshop@gmail.com"|"1234@EBAC"|"Seja bem vindo a tela de checkout"
|"PedroEBACshop@gmail.com"|"xxxxxsss@EBAC"|"Usuário ou senha inválidos"
|"BarbosaEBACshop@gmail.com"|"22222xsss@EBAC"|"Usuário ou senha inválidos"




