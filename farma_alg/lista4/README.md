## Lista 4

* [Aprimoramentos](#Aprimoramentos)<br>
* [Desafios](#Desafios)

### Aprimoramentos

#### (0) Exercício 07
No tabuleiro de xadrez, a casa na linha 1, coluna 1 (canto superior esquerdo) é sempre branca e as cores das casas se alternam entre branca e preta, de acordo com o padrão conhecido como... xadrez! Dessa forma, como o tabuleiro tradicional tem oito linhas e oito colunas, a casa na linha 8, coluna 8 (canto inferior direito) será também branca. Neste problema, entretanto, queremos saber a cor da casa no canto inferior direito de um tabuleiro com dimensões quaisquer: L linhas e C colunas.
Faça um programa Pascal que leia do teclado dois números naturais positivos representando respectivamente o número de linhas L e colunas C do tabuleiro e verifique se a cor da casa no canto inferior direito desse tabuleiro será branca ou preta.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|6 9|PRETA|
|8 8|BRANCA|

#### (1) Exercício 10
Um número inteiro positivo é dito triangular se seu valor é o produto de três números naturais consecutivos. Por exemplo, o número 120 é triangular porque 120 = 4 x 5 x 6 .

Faça um programa Pascal que leia do teclado um número inteiro positivo n e verifique se ele é triangular ou não. Se for, imprima 1 e se não for, imprima 0.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|120|1|
|123|0|
|6|1|

#### (2) Exercício 09
Dadas as populações Pa e Pb de duas cidades A e B (no ano atual) e suas respectivas taxas de crescimento anual Ta e Tb, faça um programa Pascal que que receba 4 números reais como entrada (Pa, Pb, Ta, Tb) representando estas informações e determine se a população da cidade de menor população ultrapassará a de maior população e se sim, imprima em quantos anos que isto ocorrerá. Caso contrário, imprima 0.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|300 500 0.12 0.05|8|
|300 500 0.1 0.5|0|

#### (3) Exercício 06
Um inteiro positivo N é considerado perfeito se o mesmo for igual a soma de seus divisores positivos diferentes de N.

Exemplo: 6 é perfeito pois 1 + 2 + 3 = 6 e 1, 2 e 3 são todos os divisores positivos de 6 e que são diferentes de 6.

Faça um programa Pascal que leia um número inteiro positivo K e mostre os K primeiros números que são perfeitos.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|1|6|
|2|6 28|

#### (4) Exercício 03
A definição de uma série de pares Valor-Quadrado em Matemática é dada pela presença de elementos numéricos, organizados em sequências dois-a-dois, em que cada número é seguido de seu quadrado exatamente uma vez (veja os exemplos abaixo).

Faça um programa Pascal que leia do teclado uma sequência com uma quantidade arbitrária de valores inteiros positivos. A sequência termina com o valor 0, que serve para indicar o final da entrada de dados e não deverá ser processado.
O programa deve determinar e imprimir se a série é ou não do tipo Valor-Quadrado imprimindo 1 caso seja e 0 caso não seja.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|25 625 7 49 10 100 8 64 0|1|
|6 36 4 16 9 30 5 25 0|0|
|2 4 3 9 4 16 5 25 0|1|

#### (5) Exercício 08
Faça um programa Pascal que leia do teclado uma sequência de números inteiros até que seja lido um número que seja o dobro ou a metade do anteriormente lido. O programa deve imprimir na saída a quantidade de números lidos, a soma dos números lidos e os dois valores que forçaram a parada do programa.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|-549 -716 -603 -545 -424 -848|6 -3685 -424 -848|
|-549 -716 -603 -545 -424 646 438 892 964 384 192|11 679 384 192|

#### (6) Exercício 11
Faça um programa Pascal que leia do teclado um número inteiro maior que 1 e verifique se este número é primo ou não.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|13|SIM|
|7|SIM|
|26|NAO|

#### (7) Exercício 13
Faça um programa Pascal que leia do teclado três números inteiros positivos: i, j e k. Se j for múltiplo de i e k for múltiplo de j, o programa deve imprimir a soma dos três. Se os três valores forem consecutivos na ordem lida, o programa deve imprimi-los na ordem decrescente.
Em qualquer outra situação, o programa deve calcular e imprimir a média aritmética simples dos três valores.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|33 165 495|693|
|74 75 76|76 75 74|
|7 20 12|13|

#### (8) Exercício 15
Se multiplicarmos 37 por alguns números, obteremos números cujos algarismos, quando somados, resultam no mesmo número que foi multiplicado pelo 37. Por exemplo, se tomarmos o número 15, multiplicando-o por 37, obtemos 555. Somando-se 5 + 5 + 5 resulta em 15.

Faça um programa Pascal que leia um número inteiro positivo do teclado, calcule o resultado da multiplicação por 37, some os algarismos do resultado, compare essa soma com o número lido e imprima "SIM" se há coincidência ou "NAO" se não há coincidência.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|15|SIM|
|26|NAO|

### Desafios

#### (11) Exercício 05
Uma sequência de n números inteiros não nulos é dita piramidal k-alternante se é constituída por k segmentos:

o primeiro com um elemento, o segundo com dois elementos e assim por diante até o k-ésimo, com k elementos.

Além disso, os elementos de um mesmo segmento devem ser todos pares ou todos ímpares e para cada segmento, se seus elementos forem todos pares (ímpares), os elementos do segmento seguinte devem ser todos ímpares (pares).

Por exemplo:
```
12, 3, 7, 2, 10, 4, 5, 13, 5, 11, com n = 10 elementos é piramidal 4-alternante.
7, 10, 2, com n = 3 elementos é piramidal 2-alternante.
1, 12, 4, 3, 13, 5, 12, 6, com n = 8 elementos não é piramidal alternante pois o último segmento não tem tamanho 4.
```
Faça um programa Pascal que, dado um inteiro n >= 1 e uma sequência de n números inteiros, verifique se ela é piramidal k-alternante. Se for, o programa deve imprimir o valor de k, senão, deve imprimir 0.

Exemplos:
|Entrada|Saída|
|:-----:|:---:|
|10 12 3 7 2 10 4 5 13 5 11|4|
|8 1 12 4 3 13 5 12 6|0|
