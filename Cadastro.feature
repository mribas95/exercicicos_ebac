           #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero  concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Dados Obrigatórios
            Quando eu preencher todos os campos obrigatórios
            E marcados com asteriscos
            Então deve conseguir concluir o cadastro


            Cenário: Cadastro com campos vazios
            Quando eu não preencher os campos marcados como obrigatórios
            Então deve aparecer a mensagem de alerta "Campos obrigatórios não preenchidos"

            Esquema do Cenário: e-mail com formato inválido
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario                    | senha       | mensagem               |
            | "clara@ebac.com.br"        | "teste@123" | "cadastro inválido"    |
            | "pedro@ebac.com.br"        | "teste@123" | "cadastro inválido"    |
            | "joao@ebac.com.br"         | "teste@123" | "cadastro inválido"    |
            | "Beatriz@ebac.com.br"      | "teste@123" | "cadastro inválido"    |
            | "jurema@ebac.com"          | "teste@123" | "cadastro inválido"    |
