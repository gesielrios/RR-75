
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Loja de carros"
    xml.link "http://localhost:3000/"
    xml.description "RSS da loja de carros"
    xml.language 'pt-br'
    @carros.each do |carro|
      xml.item do
        xml.title carro.nome
        xml.description carro.descricao
      end
    end
  end
end

