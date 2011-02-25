class CarroObserver < ActiveRecord::Observer

  def after_create(carro)
    Notifier.envia_email(carro, "seu email").deliver
  end

end

