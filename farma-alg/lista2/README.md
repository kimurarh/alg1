## Lista 2

* [Desvios Simples](#Desvios-Simples)<br>
* [Vários Desvios](#Vários-Desvios)<br>
* [Repetições Simples](#Repetições-Simples)<br>
* [Desafios](#Desafios)

### Desvios Simples

#### (0) Exercício 28
Sabendo-se que a água se solidifica a zero grau Celsius, ou a 32 Fahrenheit, e que entra em ebulição a 100 graus Celsius ou 212 Fahrenheit, faça um programa Pascal que obtenha do teclado um inteiro que é o valor de temperatura em Fahrenheit e imprima na tela o valor correspondente em Celsius e uma mensagem indicando se a água nesta temperatura está no estado liquido, sólido ou gasoso. A fórmula de conversão entre graus Celsius e Farenheit é:
```
5F - 9C - 160 = 0
```
Exemplos:

Entrada 1:<br>
45

Saída Esperada 1:<br>
7.22<br>
liquido

Entrada 2:<br>
240

Saída Esperada 2:<br>
115.55<br>
gasoso

#### (1) Exercício 26
Faça um programa Pascal que leia do teclado um valor inteiro que é a área de um cômodo e imprima a potência de iluminação necessária para iluminá-lo de acordo com a seguinte relação:

- 100 watts para cômodos com 6m^2 ou menos;
- 80 watts para os primeiros 3m^2 e mais 15 watts a cada 1m^2 de acréscimo para cômodos maiores que 6m^2 

Exemplos:

Entrada 1:<br>
5

Saida Esperada 1:<br>
100

Entrada 2:<br>
9

Saida Esperada 2:<br>
170

#### (2) Exercício 24
Faça um programa Pascal que leia do teclado um valor inteiro representando o ano de nascimento de uma pessoa.
Com esse dado, o programa deve fazer o seguinte:

- Calcular e imprimir sua idade, considerando que estamos no ano de 2020;
- Verificar e imprimir se a pessoa já tem idade para votar (16 anos ou mais);
- Verificar e imprimir se a pessoa já tem idade para conseguir a carteira de habilitação (18 ou mais).

Exemplos:

Entrada 1:<br>
2002

Saida Esperada 1:<br>
18<br>
SIM<br>
SIM

Entrada 2:<br>
2005

Saida Esperada 2:<br>
15<br>
NAO<br>
NAO

#### (3) Exercício 21
Faça um programa Pascal que leia do teclado um número inteiro positivo. Esse número deve ser classificado em uma das seguintes situações:

- Múltiplo exclusivamente de 7.
- Múltiplo exclusivamente de 11.
- Múltiplo de 7 e de 11.
- Não é múltiplo nem de 7 nem de 11.

O programa deve imprimir a situação correspondente ao número lido.

Exemplos:

Entrada 1:<br>
210

Saída Esperada 1:<br>
Multiplo exclusivamente de 7.

Entrada 2:<br>
200

Saída Esperada 2:<br>
Nao e multiplo nem de 7 nem de 11.

#### (4) Exercício 25
Faça um programa Pascal que leia do teclado três valores inteiros representando a data de nascimento de uma pessoa (dia, mês e ano) e imprima quantos anos completos ela terá no dia 29/04/2021.

Exemplos:

Entrada 1:<br>
17 05 1988

Saída Esperada 1:<br>
33

Entrada 2:<br>
29 04 2021

Saída Esperada 2:<br>
0

#### (5) Exercício 19
Faça um programa Pascal que leia do teclado três valores reais que são as três notas obtidas por uma pessoa. Leia também do teclado a quantidade de faltas dessa pessoa.

- Caso o resultado da média aritmética seja inferior a 4.0 o programa deverá imprimir "NAO".
- Caso a média seja maior ou igual e 4.0 e inferior a 7.0, imprima "TALVEZ".
- Caso a média seja maior ou igual a 7.0 imprima "SIM".

Alunos com o número de faltas maior ou igual a 10 estarão automaticamente reprovados. Neste último caso, imprima "NAO".

Exemplos:

Entrada 1:<br>
7.5 8.1 9.3 6

Saída Esperada 1:<br>
SIM

Entrada 2:<br>
10.0 9.0 9.3 10

Saída Esperada 2:<br>
NAO

### Vários Desvios

#### (9) Exercício 30
Um vendedor necessita de um programa que calcule o preço total devido por um cliente que comprou um produto em sua loja. Faça um programa Pascal que receba dois números inteiros que são, respectivamente, o código do produto e a quantidade comprada. Imprima na tela o preço total, usando a tabela abaixo.
Caso o código não exista o programa deve imprimir ERRO.

|Código do Produto|Preço unitário|
|:---------------:|:------------:|
|1001             |5,32          |
|1324             |6,45          |
|6548             |2,37          |
|987              |5,32          |
|7623             |6,45          |

Exemplos:

Exemplo 1:<br>
1324 6

Saida Esperada 1:<br>
38.70

Exemplo 2:<br>
987 9

Saida Esperada 2:<br>
47.88

#### (10) Exercício 22
Faça um programa Pascal que leia do teclado dois valores inteiros que são as coordenadas (X,Y) de um ponto no sistema cartesiano. Imprima na tela o quadrante ao qual o ponto pertence: 1, 2, 3 ou 4, conforme as regras clássicas da matemática.

Caso o ponto não pertenca a nenhum quandrante, imprima X se ele está sobre o eixo X, Y, se ele está sobre o eixo Y, ou então imprima O, caso ele esteja na origem.

Exemplos:

Exemplo de entrada 1:<br>
4 4

Saida Esperada 1:<br>
1

Exemplo de entrada 2:<br>
4 0

Saida Esperada 2:<br>
X

#### (11) Exercício 31
Um banco concederá um crédito especial aos seus clientes, mas este crédito será dependente do saldo médio de cada cliente no último ano. Faça um programa Pascal que leia do teclado um valor real que é o saldo médio de um cliente específico e calcule o valor do crédito de acordo com a tabela abaixo. Imprima o saldo médio e o valor do crédito.

|Saldo médio |Percentual                 |
|:----------:|:-------------------------:|
|de 0 a 200	 |0                          |
|de 201 a 400|20% do valor do saldo médio|
|de 401 a 600|30% do valor do saldo médio|
|acima de 601|40% do valor do saldo médio|

Exemplos:

Exemplo 1:<br>
150

Saida Esperada 1:<br>
100<br>
0

Exemplo 2:<br>
1000

Saida Esperada 2:<br>
1000<br>
40%

#### (12) Exercício 32
Uma empresa concederá um aumento de salário aos seus funcionários, mas este aumento será de acordo com o cargo que cada um ocupa. A tabela abaixo contém os códigos, o cargo e e percentual de aumento correspondente.<br>
Faça um programa Pascal que leia dois valores do teclado, o primeiro é o salário de um funcionário e o segundo é o código do cargo dele. Calcule o valor do novo salário.<br>
Se o cargo do funcionário não estiver na tabela, ele deverá receber 40% de aumento. Imprima o valor do salário antigo, o do novo salário e a diferença entre eles, nesta ordem, em 3 linhas.

|Código|Cargo	Percentual|
|101   |Gerente	10%     |
|102	 |Engenheiro	20% |
|103	 |Técnico	30%     |

Exemplos:

Exemplo 1:<br>
2500 101

Saida Esperada 1:<br>
2500.00<br>
2750.00<br>
250.00

Exemplo 2:<br>
5000 102

Saida Esperada 2:<br>
5000.00<br>
6000.00<br>
1000.00

#### (13) Exercício 33
Faça um programa Pascal que leia dois números inteiros representando respectivamente o número de lados de um polígono regular e a medida do lado. Seu programa deve fazer o seguinte:

- se o número de lados for 3, imprima TRIANGULO e o valor do seu perímetro;
- se o número de lados for 4, imprima QUADRADO e o valor da sua área;
- se o número de lados for 5, imprima PENTAGONO;
- se o número de lados for menor que 3 imprima a mensagem "ERRO";
- se o número de lados for maior que 5 imprima a mensagem "ERRO".

Exemplos:

Exemplo 1:<br>
3 10

Saida Esperada 1:<br>
TRIANGULO 30

Exemplo 2:<br>
6 20

Saida Esperada 2:<br>
ERRO

#### (14) Exercício 36
Alguém deseja cobrir as paredes de uma cozinha com azulejos. As lojas somente vendem caixas com 10 azulejos. Todas as lojas do ramo vendem apenas 3 (três) tipos de azulejos, cujas dimensões são:

1. 50cm x 40cm;
2. 50cm x 60cm;
3. 50cm x 80cm.

Faça um programa Pascal que leia do teclado dois valores inteiros representando respectivamente o tipo do azulejo desejado (um dos números 1, 2 ou 3) e a área que se deseja azulejar, em metros quadrados. Seu programa deve imprimir a quantidade de caixas de azulejos que deverão ser compradas para cobrir toda a área. Considere que pedaços de azulejo podem ser reaproveitados, de maneira a minimizar a quantidade de caixas.

Exemplos:

Entrada 1:<br>
2 122

Saída Esperada 1:<br>
41 caixas

#### (15) Exercício 29
Faça um programa Pascal que leia do teclado um conjunto de 4 valores i, a, b, c, sendo que i é um valor inteiro e positivo e a, b, c, são quaisquer valores reais. Imprima na tela os valores de a, b, c da seguinte forma:

- os três valores a, b, c em ordem crescente, se i = 1
- os três valores a, b, c em ordem decrescente, se i = 2,
- os três valores a, b, c de forma que o maior dentre a, b, c fique entre os outros dois valores, com a ordem deles mantida, se i = 3.

Exemplos:

Exemplo 1:<br>
1 34 12 21

Saida Esperada 1:<br>
12 21 34

Exemplo 2:<br>
3 68 5 45

Saida Esperada 2:<br>
5 68 45

#### (16) Exercício 35
Faça um programa Pascal que leia do teclado um valor real que representa o salário mensal de uma pessoa. Seu programa deve imprimir valor do imposto de renda (IR) mensal, em reais, de acordo com a tabela de 2009, que está abaixo.

Se o salário digitado for menor que o salário mínimo de R$ 540,00 o programa deve imprimir "NAO".

1. menor ou igual a 1424,00: 0%;
2. maior que 1424,00, menor ou igual a 2150,00: 7.5%;
3. maior que 2150,00, menor ou igual a 2866,00: 15%;
4. maior que 2866,00, menor ou igual a 3582,00: 22.5%;
5. maior que 3582,00: 27.5%.

Junto com o valor do IR mensal, o programa deve imprimir a Faixa (1,2,3,4 ou 5) correspondente ao salário.

Exemplos:

Entrada 1:<br>
500.00

Saída Esperada 1:<br>
NAO

Entrada 2:<br>
2300.00

Saída Esperada 2:<br>
3 345.00

### Repetições Simples


#### (18) Exercício 39
Faça um programa Pascal que receba um número inteiro positivo N e calcule a produto dos N primeiros números pares positivos. Ao final, imprima este produto. Para esse exercício, considere o primeiro número par como sendo 2.

Exemplos:

Entrada 1:<br>
2

Saída Esperada 1:<br>
8

Entrada 2:<br>
4

Saída Esperada 2:<br>
384

#### (19) Exercício 43
Faça um programa Pascal que receba um número inteiro positivo N e calcule a soma dos N primeiros números ímpares positivos. Ao final, imprima esta soma.

Exemplos:

Entrada 1:<br>
2

Saída Esperada 1:<br>
4

Entrada 2:<br>
5

Saída Esperada 2:<br>
25

#### (20) Exercício 40
Faça um programa Pascal que leia uma sequência de números inteiros terminada em zero e imprima o maior e o menor número dessa sequência. O valor zero não deve ser ser processado, ele serve para marcar o final da entrada de dados.

Exemplos:

Entrada 1:<br>
1 55 30 -2 560 -1 0

Saída Esperada 1:<br>
560 -2

Entrada 2:<br>
-3 -4 -30 -10 0

Saída Esperada 2:<br>
-3 -30

#### (21) Exercício 41
Faça um programa Pascal que receba um número positivo N e imprima na tela a soma dos N primeiros números da sequência de Fibonacci. Os dois primeiros números da sequência são 0 e 1, e os próximos são dados pela soma dos dois últimos números anteriormente calculados.

A título de exemplo, os oito primeiros valores dessa sequência são: 0, 1, 1, 2, 3, 5, 8, 13.

Exemplos:

Entrada 1:<br>
3

Saída Esperada 1:<br>
2

Entrada 2:<br>
5

Saída Esperada 2:<br>
7

### Desafios

#### (23) Exercício 44
Faça um programa Pascal que receba como entrada três valores inteiros n, m e p.
Este programa deverá fazer a soma de todos os números entre n e m (incluindo n e m), cujo intervalo entre eles seja de p.
Considere que n < m e que p > 0.

Por exemplo:

se n=1, m=5 e p=1, queremos a soma 1 + 2 + 3 + 4 + 5

se n=1, m=5 e p=3, queremos a soma 1 + 4

se n=1, m=5 e p=18, queremos a soma 1

se n=1, m=33 e p=10, queremos a soma 1 + 11 + 21

se n=1, n=32 e p=10, queremos a soma 1 + 11

Exemplos:

Entrada 1:<br>
0<br>
10<br>
4

Saída Esperada 1:<br>
12

Entrada 2:<br>
2<br>
6<br>
8

Saída Esperada 2:<br>
2

#### (24) Exercício 18
O cardápio de uma lancheria é o seguinte:

|Especificação  |Código|Preço|
|:-------------:|:----:|:---:|
|Cachorro quente|100	 |1,20 |
|Bauru simples	|101	 |1,30 |
|Bauru com ovo	|102	 |1,50 |
|Hambúrger	    |103	 |1,20 |
|Cheeseburguer	|104	 |1,30 |
|Refrigerante	  |105	 |1,00 |

Faça um programa Pascal que leia os seguintes valores inteiros: o código de um item pedido e a quantidade desejada desse item. Imprima o valor a ser pago. Considere que a cada execução do programa somente será calculado o valor referente a 1 (um) item.

Exemplos:

Entrada 1:<br>
101 3

Saída Esperada 1:<br>
3.90

Entrada 2:<br>
104 5

Saída Esperada 2:<br>
6.50

#### (25) Exercício 17
Números palíndromos são aqueles que podem ser lidos igualmente tanto da direita para a esquerda quanto da esquerda para a direita. Faça um programa Pascal que leia um número inteiro positivo N do teclado e verifique se esse número é um palíndromo. Caso ele seja, imprima "SIM" na tela. Em caso contrário imprima "NAO" na tela.

Dica: usando divisões sucessivas por 10, tente reconstruir o número ao contrário.

Exemplos:

Entrada 1:<br>
12321

Saída Esperada 1:<br>
SIM

Entrada 2:<br>
123421

Saída Esperada 2:<br>
NAO

#### (26) Exercício 16
Faça um programa em Pascal que leia do teclado um valor inteiro max e imprima na tela o primeiro número inteiro cujo fatorial seja maior que max. Por exemplo, se for fornecido o valor 1000 para max, o programa deve imprimir na tela o valor 7, pois 7! = 5040, e 6! = 720.

Exemplos:

Entrada 1:<br>
1000

Saída Esperada 1:<br>
7

Entrada 2:<br>
500

Saída Esperada 2:<br>
6
