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

Esquema do Cenário: Autenticar multiplos usuários
Quando eu digitar <usuário>
E a <senha>
Então deve exibir uma <mensagem> de sucesso


Esquema do Cenário: Autenticação inválido
Quando eu digitar <usuário>
E a <senha>
Então deve exibir uma <mensagem> de Alerta

Example:
|"usuario"|"senha"|"mensagem"|
|"usuarioEBACshop@gmail.com"|"1234@EBAC"|"tela de checkout"
|"PedroEBACshop@gmail.com"|"xxxxxsss@EBAC"|"tela de checkout"
|"BarbosaEBACshop@gmail.com"|"22222xsss@EBAC"|"tela de checkout"


Example:
|"usuario"|"senha"|"mensagem"|
|"usuarioEBACshop@gmail.com"|"ph1234@EBAC"|"Usuário ou senha inválidos"
|"PedroEBACshop@gmail.com"|"xxxxxs2111ss@EBAC"|"Usuário ou senha inválidos"
|"BarbosaEBACshop@gmail.com"|"22ph222xsss@EBAC"|"Usuário ou senha inválidos"



