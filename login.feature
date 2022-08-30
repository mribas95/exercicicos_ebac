#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login(autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de portal da EBAC-SHOP

Cenário: Dados válidos para tela de checkout
Quando eu digitar usuário "matheus.ribaas@ebac.com"
E a senha "a123456A"
Então deve ser direcionado para checkout

Cenário: Dados inválidos 
Quando eu digitar o usuário "mateus.ribas@ebac.com"
E a senha "a123456A"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Cenário: Dados Inválidos
Quando eu digitar o usuário "matheus.ribaas@ebac.com"
E a senha "a12345A"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"
