#language: pt
#utf-8

Funcionalidade: Encontrar cotação do Dolar
 Eu como usuário do portal UOL
 Quero pesquisar a cotação do dolar do dia
 Para verificar se o valor do dolar atual é menor que 3,20

@Positivo
Cenario: Verificar se Cotação Atual é Menor que a Cotação Prevista
Dado que eu estou em um site de busca
E busco por UOL o melhor conteudo
Quando acesso a pagina de economia
E busco a cotação do dolar
Então comparo se o valor é menor que "3.20"

@Negativo
Cenario: Verificar se Cotação Atual é Maior que a Cotação Prevista
Dado que eu estou em um site de busca
E busco por UOL o melhor conteudo
Quando acesso a pagina de economia
E busco a cotação do dolar
Então comparo se o valor é maior ou igual á "3.20"