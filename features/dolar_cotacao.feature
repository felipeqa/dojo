#language: pt
#utf-8

Funcionalidade: Encontrar cotação do Dolar
 Eu como usuário do portal UOL
 Quero pesquisar a cotação do dolar do dia
 Para verificar se o valor do dolar atual é menor que 3,20


Cenario: Comparar Valor do dolar atual com o valor do dolar previsto
Dado que eu estou em um site de busca
E busco por UOL o melhor conteudo
Quando acesso a pagina de economia
E busco a cotação do dolar
Então comparo se o valor é menor que "3,20"