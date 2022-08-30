   #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página para configurar meu produto

            Cenário: Seleção de opções obrigatórias
            Quando eu preencher opções obrigatorias
            Então devo finalizar compra

            Cenário: Quantidade de produtos excedida
            Quando eu selecionar o produto
            E quantidade for >10
            Então deve exibir mensagem de alerta "Quantidade de produtos excedidas"

            Cenário: Limpar campos
            Quando eu preencher opções obrigatorias
            E clicar no botão "limpar"
            Então deve voltar ao estado original

            Esquema do Cenário: Seleção de itens obrigatórios
            Quando eu preencher <cor> e <tamanho> e <quantidade>
            Então devo finalizar compra

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                           |
            | "azul"   | "G"     | "2"        | "Quantidade de produtos excedidas" |
            | "branco" | "M"     | "1"        |                                    |
            | "preto"  | "P"     | "2"        |                                    |
            | "rosa"   | "GG"    | "2"        |                                    |
