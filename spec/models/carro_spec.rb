require 'spec_helper'

describe Carro do

  include CarroSpec

  before(:each) do
    @carro = Carro.new
  end

  it "Deveria ser novo" do
    @carro.should be_novo
  end

  it "Deveria ter comissao 5%" do
    @carro.preco = 20000.0
    @carro.calcula_comissao.should be == 1000.0
  end

  it "Nao deveria ser uma moto" do
    @carro.should_not be_an_instance_of(Moto)
  end

  it "Deveria caclular comissao" do
    @carro.preco = 20000
    @comissao = 1000

    lambda {
      @carro.calcula_comissao
    }.should ter_valor(@comissao)
  end

  it "testando fabrica" do
    celta = Factory.build(:carro)
    celta.nome.should be == 'celta'
    celta.descricao.should be == 'vendo celta usado, ano 2001'
    celta.preco.should be == 17000

    fox = Factory.build(:carro, :nome => 'fox', :descricao => 'vendo fox seminovo',
      :preco  => 30000)
    fox.nome.should be == 'fox'
    fox.descricao.should be == 'vendo fox seminovo'
    fox.preco.should be == 30000
  end

end

