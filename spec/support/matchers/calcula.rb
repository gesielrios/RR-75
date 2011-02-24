module CarroSpec
  class Calcula
    def initialize(comissao)
      @comissao = comissao
    end

    def matches?(bloco)
      bloco.call == @comissao
    end

    def failure_message_for_should
      "valor da comissao não está igual : #{@comissao}"
    end

    def failure_message_for_should_not
      "valor da comissao está igual : #{@comissao}"
    end
  end

  def ter_valor(comissao)
    Calcula.new(comissao)
  end
end

