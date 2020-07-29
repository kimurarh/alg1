## Capítulo 6

Aqui estão dispostos os enunciados referentes aos exercícios do Capítulo 6.<br>
As resoluções elaboradas estão na pasta :open_file_folder:<b>exerc</b>

### Exercícios

#### (1)
Faça um programa em Pascal que leia uma sequência de números terminada em zero e imprima separadamente a soma dos que são pares e a soma dos que são ı́mpares. O zero não deve ser processado pois serve para marcar o final da entrada de dados.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|1 2 3 4 5 6 7 8 9 0 |Soma dos pares : 20 <br> Soma dos impares: 25|
|19 0 | Soma dos pares: 0 <br>Soma dos impares: 19|

#### (2)
Faça um programa em Pascal que leia uma sequência de números inteiros do teclado terminada em zero e imprima os que são ao mesmo tempo múltiplos de 7 mas não são múltiplos de 2. O zero não deve ser processado pois serve para marcar o final da entrada de dados.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
| 7 14 15 21 18 35 70 0|7<br>21<br>35|
|19 0 | |

#### (3)
Faça um programa em Pascal que leia uma sequência de números inteiros do teclado terminada em zero e imprima os que forem ao mesmo tempo múltiplos de 3 maiores do que 50 e menores ou iguais a 201. O zero não deve ser processado pois serve para marcar o final da entrada de dados.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|3 60 100 201 333 0|60<br>201|
|19 0 | |

#### (4)
Faça um programa em Pascal que leia uma sequência de pares de números inteiros quaisquer, sendo dois inteiros por linha de entrada. A entrada de dados termina quando os dois números lidos forem nulos. Este par de zeros não deve ser processado e servem para marcar o término da entrada de dados. Para cada par A, B de números lidos, se B for maior do que A, imprima a sequência A, A+1, . . . , B−1, B. Caso contrário, imprima a sequência B, B+1, . . . , A−1, A.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|4 6|4 5 6|
|-2 1|-2 -1 0 1|
|2 -3|-3 -2 -1 0 1 2|
|0 0||

#### (5)
Faça um programa em Pascal que leia uma sequência de trincas de números inteiros do teclado terminada em três zeros e imprima, para cada trinca de entrada, o menor deles. Os três zeros não devem ser processados pois servem para marcar o final da entrada de dados.

|Exemplos de Entradas|Saídas Esperadas|
|------------------|--------------|
|1 2 3<br>0 0 3<br>3 2 1<br>3 1 2<br>0 0 0|1<br>0<br>1<br>1<br><br>|

#### (6)
Faça um programa em Pascal que leia uma sequência de números inteiros terminada em zero e imprima os dois maiores números lidos. Seu programa deve considerar que o usuário que digita os números vai sempre digitar pelo menos dois números diferentes de zero no inı́cio. Como sempre, o zero não deve ser processado pois serve para marcar o final da entrada de dados.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|1 2 3 4 5 6 0|6<br>5|
|6 5 3 1 0|6<br>5|
|2 1 0|2<br>1|

#### (7)
Faça um programa em Pascal que, dados dois números inteiros positivos imprima o valor da maior potência do primeiro que divide o segundo. Se o primeiro não divide o segundo, a maior potência é definida como sendo igual a 1. Por exemplo, a maior potência de 3 que divide 45 é 9.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|3 45|9|

#### (8)
Faça um programa em Pascal que leia dois números inteiros representando respectivamente as populações P A e P B de duas cidades A e B em 2009, e outros dois números inteiros representando respectivamente suas taxas percentuais de crescimento anuais X A e X B . Com estas informações seu programa deve imprimir sim se a população da cidade de menor população ultrapassará a de maior população e nao em caso contrário. Adicionalmente, em caso afirmativo, também deve imprimir o ano em que isto ocorrerá. Faça todas as contas usando operadores inteiros.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|100 80 2 3|sim em 2036|
|80 100 3 2|sim em 2036|
|100 20 10 50|sim em 2015|
|100 20 50 10|nao|

#### (9)
Faça um programa em Pascal que leia um número inteiro positivo n e imprima todos os termos, do primeiro ao n-ésimo, da sequência abaixo.

```
5, 6, 11, 12, 17, 18, 23, 24,...
```

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|5|5 6 11 12 17|
|6|5 6 11 12 17 18|

#### (10)
Faça um programa em Pascal que leia um número inteiro positivo K e imprima os K primeiros números perfeitos. Um inteiro positivo N é perfeito se for igual a soma de seus divisores positivos diferentes de N . Exemplo: 6 é perfeito pois 1 + 2 + 3 = 6 e 1, 2, 3 são todos os divisores positivos de 6 e que são diferentes de 6. A saída do programa deve ter um número perfeito em cada linha.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|2<br><br>|6<br>28|
|4<br><br><br><br>|6<br>28<br>496<br>8128|

#### (11)
Faça um programa em Pascal que leia um número inteiro positivo N como entrada e imprima cinco linhas contendo as seguintes somas, uma em cada linha:

```
N
N + N
N + N + N
N + N + N + N
N + N + N + N + N
```

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|3<br><br><br><br><br>|3<br>6<br>9<br>12<br>15|

#### (12)
Faça um programa em Pascal que imprima exatamente a saı́da especificada na figura 1 (abaixo) de maneira que, em todo o programa fonte, não apareçam mais do que três comandos de impressão. Note que este programa não recebe dados do teclado, somente produz uma saı́da, que é sempre a mesma.

```
1
121
12321
1234321
123454321
12345654321
1234567654321
123456787654321
12345678987654321
```

#### (13)
Faça um programa em Pascal que imprima exatamente a mesma saı́da solicitada no exercı́cio anterior, mas que use exatamente dois comandos de repetição.

#### (14)
Adapte a solução do exercı́cio anterior para que a saı́da seja exatamente conforme especificada na figura abaixo.

```
        1
       121
      12321
     1234321
    123454321
   12345654321
  1234567654321
 123456787654321
12345678987654321
```

#### (15)
Faça um programa em Pascal que leia um número inteiro positivo N e em seguida leia outros N números inteiros quaisquer. Para cada valor lido, se ele for positivo, imprimir os primeiros 5 múltiplos dele.

|Exemplos de Entradas|Saídas Esperadas|
|:------------------:|:--------------:|
|2<br>7<br>3|<br>7 14 21 28 35<br>3 6 9 12 15|
|4<br>2<br>4<br>5<br>3|<br>2 4 6 8 10<br>4 8 12 16 20<br>5 10 15 20 25<br>3 6 9 12 15|

#### (16)
Sabe-se que um número da forma n 3 é igual a soma de n números ı́mpares consecutivos. Por exemplo:

- 1^3 = 1
- 2^3 = 3 + 5
- 3^3 = 7 + 9 + 11
- 4^3 = 13 + 15 + 17 + 19

Faça um programa em Pascal que leia um número inteiro positivo M e imprima os ímpares consecutivos cuja soma é igual a n^3 para n assumindo valores de 1 a M.

|Exemplos de Entradas|Saídas Esperadas|
|:-----------------:|--------------|
|1|1|
|2<br><br>|1<br>3 5|
|4<br><br><br><br>|1<br>3 5<br>7 9 11<br>13 15 17 19|

#### (17) 
Faça um programa em Pascal que leia uma sequência de números naturais positivos terminada m zero (que não deve ser processado pois serve para marcar o final da entrada de dados) e imprima o histograma da sequência dividida em quatro faixas (o histograma é a contagem do número de elementos em cada faixa):

- Faixa 1: 1 - 100;
- Faixa 2: 101 - 250;
- Faixa 3: 251 - 20000;
- Faixa 4: acima de 20001;

|Exemplos de Entradas|Saídas Esperadas|
|:-----------------:|:--------------:|
|347 200 3 32000 400 10 20 25 0|Faixa 1: 4<br>Faixa 2: 1<br>Faixa 3: 2<br>Faixa 4: 1|

#### (18)
Escreva um programa em Pascal que leia um número inteiro e verifique se este número está na base binária, ou seja, se é composto somente pelos dı́gitos 0 e 1. Caso o número esteja na base binária, o programa deve imprimir seu valor na base decimal. Caso contrário, deve imprimir uma mensagem indicando que o número não é binário.

Dica: dado o número 10011 em base binária, seu valor correspondente em base decimal será dado por
```
1.2^4 + 0.2^3 + 0.2^2 + 1.2^1 + 1.2^0 = 19
```
Dica 2: Use cálculos contendo divisões por 10 e restos de divisão por 10 para separar os dı́gitos.

|Exemplos de Entradas|Saídas Esperadas|
|:-----------------:|:--------------:|
|10011|19|
|101|5|
|1210|nao eh binario|
