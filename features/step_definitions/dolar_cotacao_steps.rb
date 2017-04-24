#Positivo
Dado(/^que eu estou em um site de busca$/) do
  visit 'https://www.bing.com/?cc=br'
end

Dado(/^busco por UOL o melhor conteudo$/) do
  find('#sb_form_q').set('uol melhor conteudo')
  find('#sb_form_go').click
  click_link('UOL - O melhor conteúdo', match: :first) 
end

Quando(/^acesso a pagina de economia$/) do
  find(:xpath, '//*[@id="menuHorizontal"]/div/div/ul/li[5]/a').click
end

Quando(/^busco a cotação do dolar$/) do
   find(:xpath,'//*[@id="header-menu"]/ul/li[2]/a').hover
   expect(page).to have_selector(:xpath,'//*[@id="header-menu"]/ul/li[2]/div/ul/li[3]/a', visible: true)
   find(:xpath,'//*[@id="header-menu"]/ul/li[2]/div/ul/li[3]/a').click
   @dolar_atual = find(:xpath, '//*[@id="conteudo-principal"]/div[1]/div[2]/div[1]/table/tbody/tr/td[3]').text
   @dolar_atual = @dolar_atual.gsub(',','.').to_f.round(2)
end


Então(/^comparo se o valor é menor que "([^"]*)"$/) do |dolar|
  @dolar_previsto = dolar.to_f

  puts "Dolar atual = #{@dolar_atual}"
  puts "Dolar previsto = #{@dolar_previsto}"



  if @dolar_atual < @dolar_previsto
    puts true
  else
    puts false
  end 

end

#Negativo
Então(/^comparo se o valor é maior ou igual á "([^"]*)"$/) do |dolar|
  @dolar_previsto = dolar.to_f



  puts "Dolar atual = #{@dolar_atual}"
  puts "Dolar previsto = #{@dolar_previsto}"

  if @dolar_atual >= @dolar_previsto
      puts true
    else
      puts false
  end 
end
