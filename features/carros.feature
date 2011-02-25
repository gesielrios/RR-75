#language: pt

Funcionalidade: Carros
  Para vender meu carro
  Como um usuario do sistema
  Eu quero registrar meu carro

  Contexto:
    Dado que estou na pagina inicial

  Cenario: Registrando um carro
    E preencho o campo "carro[nome]" com "Celta"
    E preencho o campo "carro[descricao]" com "Muito bom estado."
    E preencho o campo "carro[preco]" com "5000"
    E aperto o botao "Anunciar!"
    Entao eu deveria ver "Muito bom estado."

  Cenario: Busca
    Dado que os seguintes carros existem:
      |   nome  |     descricao    | preco |
      | vectra  | vendo meu vectra | 32000 |
    E preencho o campo "query" com "vectra"
    E aperto o botao "Buscar"
    Entao eu deveria ver "vectra"

