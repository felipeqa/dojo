Dado(/^que eu estou em um site de busca$/) do
  visit 'https://www.bing.com/?cc=br'
end

Dado(/^busco por UOL o melhor conteudo$/) do
  find('#sb_form_q').set('uol melhor conteudo')
  find('#sb_form_go').click
  sleep 3
  click_link('UOL - O melhor conteúdo', match: :first) 
  sleep 5
end

Quando(/^acesso a pagina de economia$/) do
  find(:css, '#menuHorizontal > div > div > ul > li.menu-uol-item.area-economia > a').click
  sleep 3
end

Quando(/^busco a cotação do dolar$/) do
   find(:xpath,'//*[@id="header-menu"]/ul/li[2]/a').hover
   sleep 3
   expect(page).to have_selector(:xpath,'//*[@id="header-menu"]/ul/li[2]/div/ul/li[3]/a', visible: true)
   sleep 3
   find(:xpath,'//*[@id="header-menu"]/ul/li[2]/div/ul/li[3]/a').click
   sleep 3

end

Então(/^comparo se o valor é menor que "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
