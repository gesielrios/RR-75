class CarrosController < ApplicationController

  def index
    @carro = Carro.new
    @carros = Carro.all
  end

  def create
    carro = Carro.new params[:carro]
    carro.save
    redirect_to :action => "index"
  end

end

