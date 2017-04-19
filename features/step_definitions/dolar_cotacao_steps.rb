Dado(/^que eu estou em um site de busca$/) do
  visit 'https://br.yahoo.com/?p=us'
end

Dado(/^busco por UOL o melhor conteudo$/) do
  find('#uh-search-box').set('uol o melhor conteudo')
  find('#uh-search-button').click
  sleep 3
end

Quando(/^acesso a pagina de economia$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^busco a cotação do dolar$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^comparo se o valor é menor que "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

id="uh-search-box"