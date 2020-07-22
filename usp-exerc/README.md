## Caderno de Exercícios USP

Aqui estão dispostos os enunciados referentes aos exercícios da apostila da USP.<br>

* [1. Exercícios com Inteiros](#1.-Exercícios-com-Inteiros)<br>
* [2. Exercícios com Repetições Encaixadas](2.-Exercícios-com-Repetições-Encaixadas)
* [3. Exercícios com Reais](3.-Exercícios-com-Reais)

### 1. Exercícios com Inteiros

1.1 Dada uma coleção de números inteiros positivos terminada por 0, imprimir seus quadrados.

1.2 Dado n, calcular a soma dos n primeiros números inteiros positivos.

1.3 Dado n, imprimir os n primeiros inteiros positivos ímpares.<br>
> Exemplo: Para n = 4 a saída deveria ser 1, 3, 5, 7.

1.4 Dados um inteiro x e um inteiro não-negativo n , calcular x^n.

1.5 Uma loja de discos anota diariamente durante o mês de março a quantidade de discos vendidos. Determinar em que dia desse mês ocorreu a maior venda e qual foi a quantidade de discos vendida nesse dia.

1.6 Dados o número n de alunos de uma turma de introdução e suas notas da primeira prova, determinar a maior e a menor nota obtidas por essa turma (nota máxima = 100 e nota mínima = 0).

1.7 Dados n e uma sequência de n números inteiros, determinar a soma dos números pares.

1.8 Dado um inteiro não-negativo n, determinar n!.

1.9 Dado n e dois números inteiros positivos i e j, imprimir em ordem crescente os n primeiros naturais que são múltiplos de i ou de j e/ou de ambos.
> Exemplo: Para n = 6, i = 2 e j = 3, a saída deverá ser: 0, 2, 3, 4, 6, 8.

1.10 Dizemos que um número natural é triangular se ele é produto de três números naturais consecutivos. Dado um inteiro não-negativo n, verificar se n é triangular.
> Exemplo: 120 é triangular, pois 4 * 5 * 6 = 120.

1.11 Dado um número inteiro positivo p, verificar se p é primo.

1.12 Dados dois números inteiros positivos, determinar o máximo divisor comum entre eles usando o algoritmo de Euclides.

1.13 Dizemos que um inteiro positivo n é perfeito se for igual à soma de seus divisores positivos diferentes de n. Verificar se um dado número inteiro positivo é perfeito.
> Exemplo: 6 é perfeito, pois 1 + 2 + 3 = 6.

1.14 Um matemático italiano da idade média conseguiu modelar o ritmo de crescimento da população de coelhos através de uma sequência de números naturais que passou a ser conhecida como sequência de Fibonacci. O n-ésimo número da sequência de Fibonacci Fn é dado pela seguinte fórmula de recorrência:

> F1 = 1<br>
> F2 = 1<br>
> Fi = Fi-1 + Fi-2 para i >= 3.

Faça um programa que dado n calcula Fn.

1.15 Dizemos que um número i é congruente módulo m a j se i % m = j % m.
> Exemplo: 35 é congruente módulo 4 a 39, pois<br>
> 35 % 4 = 3 = 39 % 4.

Dados inteiros positivos n, j e m, imprimir os n primeiros naturais congruentes a j módulo m.

1.16 Dado um número natural na base binária, transformá-lo para a base decimal.
> Exemplo: Dado 10010 a saída será 18, pois 1 * 2^4 + 0 * 2^3 + 0 * 2^2 + 1 * 2^1 + 0 * 2^0 = 18

1.17 Dado um número natural na base decimal, transformá-lo para a base binária.
> Exemplo: Dado 18 a saída deverá ser 10010.

1.18 Dados três inteiros positivos, verificar se eles formam os lados de um triângulo retângulo.

1.19 Dados três números, imprimi-los em ordem crescente.

1.20 Qualquer número natural de quatro algarismos pode ser dividido em duas dezenas formadas pelos seus dois primeiros e dois últimos digitos.
> Exemplos:<br>
> - 1297: 12 e 97.
> - 5315: 53 e 14.

Escreva um programa que imprime todos os milhares (4 algarismos) cujo raiz quadrada seja a soma das dezenas formadas pela divisão acima.
> Exemplo: raiz de 9801 = 99 = 98 + 01<br>
> Portanto 9801 é um dos números a ser impresso.

1.21 Dados n e uma sequência n de números inteiros, determinar quantos segmentos de números iguais consecutivos compõem essa sequência.
> Exemplo: A sequência 5, 2, 2, 3, 4, 4, 4, 1, 1 é formada por 5 segmentos de números iguais.

1.22 Dados um inteiro positivo n e uma sequência de n números inteiros, determinar o comprimento de um segmento crescente de comprimento máximo.
> Exemplos:<br>
> - Na sequência 5, 10, 3, 2, 4, 7, 9, 8, 5 o comprimento do segmento crescente máximo é 4.
> - Na sequência 10, 8, 7, 5, 2 o comprimento de um segmento crescente máximo é 1.

1.23 Dizemos que um número natural n com pelo menos dois algarismos é palíndrome se:
- 1º Algarismo de n é igual ao seu último algarismo,
- 2º Algarismo de n é igual ao seu penúltimo algarismo,
- e assim sucessivamente.

> Exemplos:<br>
> - 567765 e 32423 são palíndromes.
> - 567675 não é palíndrome.

Dado um inteiro n, n >= 10, verificar se é palíndrome.

1.24 São dados dois números inteiros positivos p e q, sendo que o número de digitos de p é menor ou igual ao número de digitos de q. Verificar se p é um subnúmero de q.

> Exemplos:<br>
> - Se p = 23 e q = 57238, então p é subnúmero de q.
> - Se p = 23 e q = 258347, então p não é subnúmero de q.

### 2. Exercícios com Repetições Encaixadas

2.1 Dados um inteiro positivo n e n sequências de números inteiros, cada qual terminada por 0, calcular a soma dos números pares de cada sequência.

2.2 Dado um inteiro positivo n, determinar todos os inteiros entre 1 e n que são comprimento de hipotenusa de um triângulo retângulo com catetos inteiros.

2.3 Dados dois inteiros positivos m e n, determinar, entre todos os pares de números inteiros (x, y) tais que 0 <= x <= m e 0 <= y <= n, um par para o qual o valor da expressão xy - x^2 + y seja máximo e calcular também esse máximo.

2.4 Dados n e uma sequência de n números inteiros positivos, calcular a soma dos números da sequência que são primos.

2.5 Sabe-se que um número da forma n^3 é igual a soma de n ímpares consecutivos. Dado m, determine os ímpares consecutivos cuja soma é igual a n^3 para n assumindo valores de 1 a m.
> Exemplo: 1^3 = 1, 2^3 = 3 + 5, 3^3 = 7 + 9 + 11, 4^3 = 13 + 15 + 17 + 19, ...

2.6 Dado um número inteiro positivo, determine a sua decomposição em fatores primos calculando também a multiplicidade de cada fator.

2.7 Dados um inteiro positivo n e n inteiros positivos, determinar o máximo divisor comum a todos eles.

2.8 Dizemos que uma sequência de inteiros é k-alternante se for composta alternadamente por segmentos de números pares de tamanho k e segmentos de números ímpares de tamanho k.
> Exemplo:<br>
> A sequência 1 3 6 8 9 11 2 4 1 7 6 8 é 2-alternante. <br>
> A sequência 2 1 4 7 8 9 12 é 1-alternante. <br>
> A sequência 4 2 3 1 6 4 2 9 3 não é alternante. <br>
> A sequência 1 3 5 é 3-alternante.

Dados um inteiro positivo n e uma sequência com n inteiros, verificar se existe um inteiro positivo k tal que a sequência é k-alternante. Dê como saída também o valor de k caso a sequência seja alternante.

### 3. Exercícios com Reais

3.1 Uma pessoa aplicou um capital de x complexos (moeda do país) a juros mensais de z durante 1 ano. Determinar o montante de cada mês durante este período.

3.2 Dado um inteiro positivo n, determine o número harmônico Hn definido por:
```
Hn = Somatório(1/k)        de k=1 a n
```
