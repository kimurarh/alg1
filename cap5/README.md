## Capítulo 5 - Exercícios

#### (1)
Considere o seguinte programa incompleto em Pascal:
 
```pascal
program tipos;
 
var
  A: <tipo>;
  B: <tipo>;
  C: <tipo>;
  D: <tipo>;
  E: <tipo>;
  
begin
  A := 1 + 2 * 3;
  B := 1 + 2 * 3 / 7;
  C := 1 + 2 * 3 div 7;
  D := 3 div 3 * 4.0;
  E := A + B * C - D;
end.
```
 
Você deve completar este programa indicando, para cada variável de A até E, qual é o tipo correto desta variável. Alguams delas podem ser tanto inteiras como reais, enquanto que algumas só podem ser de um tipo específico. Para resolver este exercício você precisa estudar sobre os operadores inteiros e reais e também sobre a ordem de precedência de operadores que aparecem em uma expressão aritimética. Sua solução estará correta se seu programa compilar.

#### (2)
Faça um programa em Pascal que leia 6 valores reais para as variáveis A, B, C, D, E, F e imprima o valor de X após o cálculo da seguinte expressão aritmética:

X = (((A + B)/(C - D)) * E)/(F/AB + E)

Seu programa deve assumir que nunca haverá divisões por zero para as variáveis dadas como entrada. Note que neste programa a variável X deve ser do tipo real, enquanto que as outras variáveis podem ser tanto da família ordinal (integer, logint, etc) como também podem ser do tipo real.

Exemplo:

|Exemplo de Entrada|Saída Esperada         |
|:----------------:|:---------------------:|
|1 2 3 4 5 6       |-1.87500000000E+000    |
|1 -1 1 -1 1 -1    |0.0000000000E+000      |
|3 5 8 1 1 2       |1.0084033613445378E+000|

#### (3)
Faça um programa que implemente as seguintes expressões aritméticas usando o mínimo possível de parênteses.

(a) W^2 / (A*x^2 + B*x + C)<br>
(b) ((P1 + P2)/(Y - Z)*R) / (W/A*B + R)

#### (4)
Faça um programa que some duas horas. A entrada deve ser feuta lendo-se dois inteiros por linha, em duas linhas, e a saída deve ser feita no formato especificado no exemplo abaixo:

|Exemplo de entrada|Saída esperada      |
|:----------------:|:------------------:|
|12 52<br>7 13     |12:52 + 7:13 = 20:05|
|20 15<br>1 45     |20:15 + 1:45 = 22:00|
|0 0<br>8 35       |0:0 + 8:35 = 8:35   |

#### (5)
Faça um programa que, dado um número inteiro que representa uma quantidade de segundos, determine o seu valor equivalente em graus, minutos e segundos. Se a quantidade de segundos for insuficiente para dar um valor em graus, o valor em graus deve ser 0 (zero). A mesma observação vale em relação aos minutos e segundos.

|Exemplo de entrada|Saída esperada|
|:----------------:|:------------:|
|3600              |1, 0, 0       |
|3500              |0, 58, 20     |
|7220              |2, 0, 20      |

#### (6)
Faça um programa que troque o conteúdo de duas variáveis. Exemplos:

|Exemplo de entrada|Saída esperada|
|:----------------:|:------------:|
|3 7               |7 3           |
|5 15              |15 -5         |
|2 10              |10 2          |

#### (7)
Faça um programa que troque o conteúdo de duas variáveis. Exemplos:

|Exemplo de entrada|Saída esperada|
|:----------------:|:------------:|
|3 7               |7 3           |
|5 15              |15 -5         |
|2 10              |10 2          |

Troque o conteúdo SEM utilizar variáveis auxiliares

#### (8)
Indique qual o resultado das expressões abaixo, sendo:
```
a = 6; b= 9.5; d = 14; p = 4; q = 5; r = 10; z = 6.0; sim = TRUE.
```
(a) sim AND (q \ge p)<br>
(b) (0 \le b) AND (z > a) OR (a = b)<br>	
(c) (0 \le b) AND ((z > a) OR (a = b))<br>	
(d) (0 \le b) OR ((z > a) AND (a = b))	

#### (9)
Indique qual o resultado das expressões baixo, sendo:
```
a = 5; b = 3; d = 7; p = 4; q = 5; r = 2; x = 8; y = 4; z = 6; sim = TRUE.
```
(a) NOT sim AND (z DIV b + 1 = r)<br>
(b) (x + y > z) AND sim OR (d \ge b)<br>	
(c) (x + y <> z) AND (sim OR (d \ge b))	

#### (10)
Indique qual o resultado das expressões baixo, sendo:
```
a = 5; b = 3; d = 7; p = 4; q = 5; r = 2; x = 8; y = 4; z = 6; sim = TRUE;
```
(a) (z DIV a + b * a) - d DIV 2	<br>
(b) p / r MOD q - q / 2 <br>	
(c) (z DIV y + 1 = x) AND sim OR (y >= x)

#### (11)
Dado o programa em Pascal abaixo, mostre o acompanhamento de sua execução para três valores de entrada (valores pequenos, por exemplo para x = 0, x = 10 e x = -1). Em seguida, descreva o que o programa faz.
```pascal
program questao1;

var
  m, x, y: integer;

begin
  read(x);
  y := 0;
  m := 1;
  while x > 0 do
  begin
  	y := y + (x mod 2) * m;
  	x := x div 2;
  	m := m * 10
  end;
  writeln(y)
end.
```

#### (12)
Faça um program que leia um número n do teclado e decida se ele é positivo ou negativo. Seu programa deve imprimir a mensagem "par" ou "impar" conforme o caso. Exemplo:

|Exemplo de entrada|Saida esperada|
|:----------------:|:------------:|
|5                 |impar         |
|4                 |par           |
|15                |impar         |

#### (13)
|Exemplo de Entrada|Saída Esperada           |
|:----------------:|:-----------------------:|
|5 2               |primeiro eh maior        |
|2 5               |segundo eh maior ou igual|
|5 5               |segundo eh maior ou igual|

#### (14)
Faça um programa que leia três números x, y, z do teclado e decida se x <= y < z. Seu programa deve imprimir a mensagem "esta no intervalo" ou "nao esta no intervalo" conforme o caso. Exemplo:

|Exemplo de Entrada|Saída Esperada        |
|:----------------:|:--------------------:|
|3 5 8             |esta no intervalo     |
|3 8 8             |nao esta no intervalo |
|4 12 5            |nao esta no intervalo |

#### (15)
Faça um programa que leia três números x, y,z do teclado e decida se x > y ou se y < z. Seu programa deve imprimir a mensagem 'sim' em caso afirmativo e 'nao' caso contrario. Exemplo:

|Exemplo de Entrada|Saida Esperada|
|:----------------:|:------------:|
|3 5 8             |sim           |
|3 8 8             |nao           |
|4 12 5            |nao           |

#### (16)
Faça um programa que leia 6 valores reais para as variáveis A, B, C, D, E, F e imprima o valor de X após o cálculo da seguinte expressão aritmética:
```
X = ((A+B)/(C-D)*E)/(F/(A*B)+E)
```
Seu programa deve imprimir a mensagem 'divisão por zero' caso o denominador seja zero. Caso isso não ocorra seu ṕrograma deverá realizar a conta.

|Exemplos de entradas|Saídas esperadas|
|:------------------:|:--------------:|
|1 2 3 4 5 6         |-1.87500000E+000|
|0 0 0 0 0 0         |divisao por zero|
|1 1 2 2 1 3         |divisao por zero|

#### (17)
#### (18)
#### (19)
#### (20)





