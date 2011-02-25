class Notifier < ActionMailer::Base
  default :from => "lojacarro@caelum.com.br"

  def envia_email(carro, email)
    @carro = carro
    mail(:to => email, :subject => carro.nome)
  end

end

