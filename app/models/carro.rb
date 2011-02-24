class Carro < ActiveRecord::Base

  def novo?
    true
  end

  def calcula_comissao
    preco * 0.05
  end

end

