#language: pt

Funcionalidade: Carros
  Para vender meu carro
  Como um usuario do sistema
  Eu quero registrar meu carro

  Cenario: Registrando um carro
    Dado que estou na pagina inicial
    E preencho o campo "carro[nome]" com "Celta"
    E preencho o campo "carro[descricao]" com "Muito bom estado."
    E preencho o campo "carro[preco]" com "5000"
    E aperto o botao "Anunciar!"
    Entao eu deveria ver "Muito bom estado."

