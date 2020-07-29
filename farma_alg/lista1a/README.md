## Lista 1A

* [Expressões Aritméticas](#Expressões-Aritméticas)<br>
* [Desvios Condicionais e Expressões Booleanas](#Desvios-Condicionais-e-Expressões-Booleanas)<br>
* [Progressões Aritméticas e Geométricas](#Progressões-Aritméticas-e-Geométricas)<br>
* [Cálculos com Resto de Divisão Inteira](#Cálculos-com-Resto-de-Divisão-Inteira)<br>
* [Desafios](#Desafios)

### Expressões Aritméticas

#### (0) Exercício 98

Faça um programa Pascal que leia um número real do teclado e imprima a terça parte deste número com duas casas decimais.

Exemplos:

Entrada 1:
3<br>
Saída Esperada 1:
1.00

Entrada 2:
10<br>
Saída Esperada 2:
3.33

Entrada 3:
90<br>
Saída Esperada 3:
30.00

#### (1) Exercício 85

Faça um programa Pascal que leia um número real representando o diâmetro (em metros) de uma esfera. Calcule e imprima o volume desta esfera, com duas casas de precisão.
Lembre-se que o volume de uma esfera é dado pela fórmula

V = 4*pi/3 * R^3

Use pi = 3.14.

Exemplos:

Entrada 1:
3<br>
Saída Esperada 1:
14.13

Entrada 2:
10<br>
Saída Esperada 2:
523.33

#### (2) Exercício 80

Faça um programa Pascal que leia do teclado dois valores reais x e y, e em seguida calcule e imprima o valor da seguinte expressão com três casas decimais:

x/y + y/x

Exemplos:

Entrada 1:
4 3<br>
Saída Esperada 1:
2.083

Entrada 2:
8 5<br>
Saída Esperada 2:
2.225

#### (3) Exercício 83

Faça um programa Pascal que leia um número inteiro representando a idade de uma pessoa expressa em dias e imprima-a expressa em anos, meses e dias.
A saída deve conter os números de anos, meses e dias, nessa ordem. Para este exercício, considere que todos os meses possuem 30 dias e desconsidere anos bissextos.

Exemplos:

Entrada 1:
4518<br>
Saída Esperada 1:
12 4 18

Entrada 2:
11011<br>
Saída Esperada 2:
30 2 1

#### (4) Exercício 84

Faça um programa Pascal que leia dois números inteiros e imprima a média aritmética entre eles.

Exemplos:

Entrada 1:
10 20<br>
Saída Esperada 1:
15

Entrada 2:
750 1500<br>
Saída Esperada 2:
1125

Entrada 3:
8900 12300<br>
Saída Esperada 3:
10600

#### (5) Exercício 88

Faça um programa Pascal que leia do teclado dois valores reais x e y, e em seguida calcule e imprima o valor da seguinte expressão com três casas decimais:

x^3 + x * y

Exemplos:

Entrada 1:
4 3<br>
Saída Esperada 1:
76.000

Entrada 2:
5 2<br>
Saída Esperada 2:
135.000

#### (6) Exercício 93

Faça um programa Pascal que leia um número inteiro e imprima o seu sucessor e seu antecessor, na mesma linha.

Exemplos:

Entrada 1:
1<br>
Saída Esperada 1:
2 0

Entrada 2:
100<br>
Saída Esperada 2:
101 99

#### (7) Exercício 94

Faça um programa Pascal que leia dois números inteiros, um será o valor de um produto e outro o valor de desconto que esse produto está recebendo.
Imprima quantos reais o produto custa na promoção.

Exemplos:

Entrada 1:
500 50<br>
Saida Esperada 1:
450

Entrada 2:
60000 1<br>
Saída Esperada 2:
59999

#### (8) Exercício 89

O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor e dos impostos (aplicados ao custo de fábrica).
Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%, faça um programa Pascal que leia um número inteiro representando o custo de fábrica de um carro e imprima o custo ao consumidor.

Exemplos:

Entrada 1:
15000<br>
Saída Esperada 1:
25950

Entrada 2:
12500<br>
Saída Esperada 2:
21625

Entrada 3:
8350<br>
Saída Esperada 3:
14445

#### (9) Exercício 87

Sabe-se que para iluminar de maneira correta os cômodos de uma casa, para cada Metro quadrado (m2) deve-se usar 18W de potência.
Faça um programa Pascal que:

- receba dois inteiros representando as duas dimensões de um comodo em metros;<br>
- calcule e imprima a sua área em m2;<br>
- imprima a potência de iluminação que deverá ser usada em watts.

Exemplos:

Entrada 1:
10 10<br>
Saída Esperada 1:
100 1800

Entrada 2:
5 7<br>
Saída Esperada 2:
35 630

#### (10) Exercício 92

Faça um programa Pascal que leia três números inteiros (P1, P2 e P3) contendo as notas das três provas de um aluno em uma certa disciplina e imprima a média final deste aluno, a qual deve ser um número inteiro. Considerar que a média é ponderada e que o peso das notas é 1, 2 e 3, respectivamente. A fórmula que calcula essa média é:
```
(P1 + 2 * P2 + 3 * P3)/(1 + 2 + 3)
```
Exemplos:

Entrada 1:
10 50 80<br>
Saída Esperada 1:
58

Entrada 2:
90 100 48<br>
Saída Esperada 2:
48

#### (11) Exercício 82

Dado um número inteiro que representa uma quantidade de segundos, faça um programa que imprima o seu valor equivalente em horas, minutos e segundos, nesta ordem. Se a quantidade de segundos for insuficiente para dar um valor em horas, o valor em horas deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos.

Exemplos:

Entrada 1:
3600<br>
Saída Esperada 1:
1:0:0

Entrada 2:
3500<br>
Saída Esperada 2:
0:58:20

Entrada 3:
7220<br>
Saída Esperada 3:
2:0:20

#### (12) Exercício 99

Faça um programa Pascal que leia três números inteiros representando a idade de uma pessoa expressa em anos, meses e dias, respectivamente, e imprima-a expressa apenas em dias. Para este exercício, considere que todos os meses possuem 30 dias e desconsidere anos bissextos.

Exemplos:

Entrada 1:
12 4 18<br>
Saída Esperada 1:
4518

Entrada 2:
30 2 1<br>
Saída Esperada 2:
11011

### Desvios Condicionais e Expressões Booleanas

#### (16) Exercício 112

Faça um programa Pascal que leia do teclado um número inteiro N e imprima se ele é PAR ou IMPAR.

Exemplos:

Entrada 1:
5<br>
Saída Esperada 1:
IMPAR

Entrada 2:
3<br>
Saída Esperada 2:
IMPAR

Entrada 3:
2<br>
Saída Esperada 3:
PAR

#### (17) Exercício 114

Faça um programa Pascal que leia um número inteiro do teclado, calcule se ele é ou não divisível por 5. Imprima SIM caso ele seja e NAO em caso contrário.

Exemplos:

Entrada 1:
5<br>
Saída Esperada 1:
SIM

Entrada 2:
-5<br>
Saída Esperada 2:
SIM

Entrada 3:
3<br>
Saída Esperada 3:
NAO

#### (18) Exercício 107

Faça um programa Pascal que leia de teclado um número inteiro e imprima se este é múltiplo de 3.

Exemplos:

Entrada 1:
5<br>
Saída Esperada 1:
NAO

Entrada 2:
-3<br>
Saída Esperada 2:
SIM

Entrada 3:
15<br>
Saída Esperada 3:
SIM

#### (19) Exercício 104

Faça um programa Pascal que leia do teclado dois números inteiros e imprima qual é o menor valor entre eles.

Exemplos:

Entrada 1:
5 4<br>
Saída Esperada 1:
4

Entrada 2:
-3 -4<br>
Saída Esperada 2:
-4

Entrada 3:
6 15<br>
Saída Esperada 3:
6

#### (20) Exercício 111

Faça um programa Pascal que leia um número, calcule se ele é divisível por 3 e por 7. Caso seja, imprima SIM e caso não seja imprima NAO. Dica: use o operador AND.

Exemplos:

Entrada 1:
21<br>
Saída Esperada 1:
SIM

Entrada 2:
7<br>
Saída Esperada 2:
NAO

Entrada 2:
-3<br>
Saída Esperada 2:
NAO

#### (21) Exercício 110

Faça um programa Pascal que leia dois números inteiros do teclado e imprima SIM se o primeiro número é divisível pelo segundo.

Exemplos:

Entrada 1:
5 10<br>
Saída Esperada 1:
NAO

Entrada 2:
4 2<br>
Saída Esperada 2:
SIM

Entrada 3:
7 21<br>
Saída Esperada 3:
NAO

#### (22) Exercício 108

Faça um programa Pascal que leia um número inteiro do teclado e indique se ele está compreendido entre 20 e 90 ou não (20 e 90 não estão na faixa de valores).

Exemplos:

Entrada 1:
50<br>
Saída Esperada 1:
SIM

Entrada 2:
20<br>
Saída Esperada 2:
NAO

Entrada 3:
90<br>
Saída Esperada 3:
NAO

#### (23) Exercício 106

Faça um programa Pascal que leia um número inteiro do teclado e imprima a raiz quadrada do número caso ele seja positivo ou igual a zero e o quadrado do número caso ele seja negativo.

Exemplos:

Entrada 1:
0<br>
Saída Esperada 1:
0

Entrada 2:
4<br>
Saída Esperada 2:
2

Entrada 2:
-5<br>
Saída Esperada 2:
25

#### (24) Exercício 116

Faça um programa Pascal que leia do teclado um número inteiro e imprima SIM caso o número seja impar, negativo e menor que -20 ou então se for par, positivo e maior que 7. Caso contrário imprima NAO. A dica é usar uma combinação correta que envolva os operadores AND e OR.

Exemplos:

Entrada 1:
17<br>
Saída Esperada 1:
NAO

Entrada 2:
-101<br>
Saída Esperada 2:
SIM

Entrada 3:
-13<br>
Saída Esperada 3:
NAO

#### (25) Exercício 109

Faça um programa Pascal que leia um número inteiro do teclado. Se ele estiver entre os valores -15 e 30 (-15 e 30 não estão inclusos), imprima seu número oposto, senão imprima o próprio número.

Exemplos:

Entrada 1:
50<br>
Saída Esperada 1:
50

Entrada 2:
-10<br>
Saída Esperada 2:
10

Entrada 3:
23<br>
Saída Esperada 3:
-23

#### (26) Exercício 113

A prefeitura de Piraporinha abriu uma linha de crédito para os funcionários estatutários. O valor máximo da prestação não poderá ultrapassar 30% do salário bruto. Faça um programa Pascal que leia do teclado dois números inteiros que representam o salário bruto e o valor da prestação e informe se o empréstimo pode ou não ser concedido.

Exemplos:

Entrada 1:
500 200<br>
Saída Esperada 1:
NAO

Entrada 2:
1000 250<br>
Saída Esperada 2:
SIM

Entrada 2:
1000 301<br>
Saída Esperada 2:
NAO

### Progressões Aritméticas e Geométricas

#### (30) Exercício 123 

Uma P.G. (Progressão Geométrica) é determinada pela sua razão q e pelo primeiro termo a1. Faça um programa Pascal que seja capaz de determinar o enésimo termo an de uma P.G., dado a razão q e o primeiro termo a1. Seu programa deve ler três valores inteiros a1, q, n do teclado e imprimir an.

Exemplos:

Entrada 1:
1 1 100<br>
Saída Esperada 1:
1.00

Entrada 2:
2 2 10<br>
Saída Esperada 2:
1024.00

#### (31) Exercício 121

Certo dia o professor de Johann Friederich Carl Gauss mandou que os alunos somassem os números de 1 a 100. Imediatamente, Gauss (aos 10 anos de idade) achou a resposta – 5050 – aparentemente sem ter feito o processo exaustivo de somar de um em um.
Supõe-se que, já aí, Gauss houvesse descoberto a fórmula de uma soma de uma progressão aritmética.

Faça um programa em Pascal que leia do teclado, respectivamente, n, a1 e an e realize a soma de uma P.A.
de n termos, dado o primeiro termo a1 e o último termo an.

Exemplos:

Entrada 1:
100 1 100<br>
Saída Esperada 1:
5050

Entrada 2:
20 10 200<br>
Saída Esperada 2:
2100

#### (32) Exercício 122

Uma P.A. (Progressão Aritmética) é determinada pela sua razão r e pelo primeiro termo (a1). Faça um programa Pascal que seja
capaz de imprimir o enésimo (n) termo (an) de uma P.A., dado a razão (r) e o primeiro termo (a1). Seu programa deve ler três valores inteiro
do teclado (n, r, a1) do teclado e imprimir an, segundo a fórmula:
```
an = a1 + (n - 1) * r
```
Exemplos:

Entrada 1:
8 1 3<br>
Saída Esperada 1:
10

Entrada 2:
100 10 1<br>
Saída Esperada 2:
991

Entrada 3:
5 -2 0<br>
Saída Esperada 3:
-8

#### (33) Exercício 119

Considere a razão r de uma P.A. (Progressão Aritmética) e um termo qualquer, k (ak). Escreva um programa Pascal para calcular o enésimo termo n (an). Seu programa deve ler k, ak, r, n do teclado e imprimir an, segundo a fórmula:
```
an = ak + (n - k) * r
```
Exemplos:

Entrada 1:
1 5 2 10<br>
Saída Esperada 1:
23

Entrada 2:
10 20 2 5<br>
Saída Esperada 2:
10

Entrada 3:
100 50 20 90<br>
Saída Esperada 3:
300

### Cálculos com Resto de Divisão Inteira

#### (36) Exercício 75

Considere que o número de uma placa de veículo é composto por quatro algarismos. Faça um programa Pascal que leia um número inteiro do
teclado e imprima o algarismo correspondente à casa das unidades.
Use o operador MOD.

Exemplos:

Entrada 1:
2569<br>
Saída Esperada 1:
9

Entrada 2:
1000<br>
Saída Esperada 2:
0

#### (37) Exercício 78

Considere que o número de uma placa de veículo é composto por quatro algarismos. Faça um programa Pascal que leia um número inteiro do teclado e apresente o algarismo correspondente à casa do milhar. Use o operador DIV.

Exemplos:

Entrada 1:
2569<br>
Saída Esperada 1:
2

Entrada 2:
1000<br>
Saída Esperada 2:
1

Entrada 3:
0350<br>
Saída Esperada 3:
0

#### (38) Exercício 77

Considere que o número de uma placa de veículo é composto por quatro algarismos. Faça um programa Pascal que leia um número inteiro do teclado e imprima o algarismo correspondente à casa das centenas. Use os operadores DIV e MOD.

Exemplos:

Entrada 1:
2500<br>
Saída Esperada 1:
5

Entrada 2:
2031<br>
Saída Esperada 2:
0

Entrada 3:
6975<br>
Saída Esperada 3:
9

### Desafios

#### (40) Exercício 101

Faça um programa Pascal que, usando apenas atribuições e expressões aritméticas, imprima ao contrário um número inteiro de três digitos lido pelo teclado. Desconsidere números que começam ou terminam em zero.

Exemplos:

Entrada 1:
123<br>
Saída Esperada 1:
321

Entrada 2:
891<br>
Saída Esperada 2:
198

Entrada 3:
565<br>
Saída Esperada 3:
565

#### (41) Exercício 100

Observemos o número 3025. Ele possui a seguinte característica:
```
30 + 25 = 55<br>
55^2 = 3025
```
Faça um programa Pascal que leia um número inteiro do teclado. Considere que o usuário sempre digita números com 4 dígitos sem zeros no início ou final. Imprima na tela uma mensagem indicando se o número tem a propriedade citada acima. Dica: use o operandor AND.

Exemplos:

Entrada 1:
3025<br>
Saída Esperada 1:
SIM

Entrada 2:
123<br>
Saída Esperada 2:
NAO

#### (42) Exercício 103

Faça um programa Pascal que leia um número inteiro representando o cosseno do ângulo formado por uma escada apoiada no chão e a distância em que a escada está de uma parede. Calcule e imprima com 3 casas decimais a altura em que a escada toca a parede.

Exemplos:

Entrada 1:
0.5 2<br>
Saída Esperada 1:
3.464

Entrada 2:
0.1 3<br>
Saída Esperada 2:
29.850

#### (43) Exercício 102

Faça um programa Pascal que, dado um número inteiro de três dígitos lido do teclado, construa um número inteiro de quatro dígitos com as seguintes regras:

- os três primeiros dígitos, contados da esquerda para a direita, são iguais aos do número dado;

- o quarto dígito é o de controle calculado da seguinte forma:
```
primeiro digito + 3 * segundo digito + 5 * terceiro digito
```
- o dígito de controle é igual ao resto da divisão dessa soma por 7.

Exemplos:

Entrada 1:
123<br>
Saída Esperada 1:
1231

Entrada 2:
555<br>
Saída Esperada 2:
5553

Entrada 3:
841<br>
Saída Esperada 3:
8414
