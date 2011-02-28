Dado /^que estou na pagina inicial$/ do
  visit "/"
end

E /^preencho o campo "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

E /^aperto o botao "([^"]*)"$/ do |botao|
  click_button(botao)
end

Entao /^eu deveria ver "([^"]*)"$/ do |texto|
  page.should have_content(texto)
end

Dado /^que os seguintes carros existem:$/ do |tabela|
  tabela.hashes.each do |hash|
    carro = Carro.new(hash)
    carro.save
  end
end

E /^cliclo no link "([^"]*)"$/ do |link|
  click_link(link)
end

Entao /^o rss deve ser:$/ do |text|
  page.body.gsub(/[\n\s]/, '').should == text.gsub(/[\n\s]/, '')
end


#Entao /^o rss deve ser:$/ do |text|
#
#end

