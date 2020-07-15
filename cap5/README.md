## Capítulo 5

Aqui estão dispostos os enunciados referentes aos exercícios do Capítulo 5.<br>
As resoluções elaboradas estão nas pastas :open_file_folder:<b>exerc</b> e :open_file_folder:<b>exerc_comp</b>.

* [Exercícios](#Exercícios)<br>
* [Exercícios Complementares](#Exercícios-Complementares)

### Exercícios

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
Faça um programa que leia três números x, y, z do teclado e decida se x > y ou se y < z. Seu programa deve imprimir a mensagem 'sim' em caso afirmativo e 'nao' caso contrario. Exemplo:

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
Faça um programa que leia uma massa de dados onde cada linha da entrada contém um número. Para cada número lido, calcule o seu sucessor par, imprimindo-os dois a dois em listagem de saída. A última linha de dados contém o número zero, o qual não deve ser processado e serve apenas para indicar o final da leitura dos dados.

|Exemplo de Entrada|Saída Esperada                    |
|:----------------:|:--------------------------------:|
|12 6 26 86 0      |12 14<br>6 8<br>26 28<br>86 88    |
|-2 -5 -1 0        |-2 0<br>-5 -3<br>-1 1             |
|1 2 3 4 5 0       |1 3<br>2 4<br>3 5<br>4 6<br>5 7   |

#### (18)
Faça um programa que leia uma massa de dados contendo a definição de várias equações do segundo grau da forma Ax² + Bx + C = 0. Cada linha de dados contém a definição de uma equação por meio dos valores de A, B e C do conjunto dos números reais. A última linha informada ao sistema contém 3 (três) valores zero (exemplo 0.0 0.0 0.0). Após a leitura de cada linha o programa deve tentar calcular as duas raı́zes da equação. A listagem de saı́da, em cada linha, deverá conter os valores das duas raı́zes reais. Considere que o usuário entrará somente com valores A, B e C tais que a equação garantidamente tenha duas raı́zes reais.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1.00 -1.00 -6.00  |3.00 -2.00    |
|1.00 0.00 -1.00   |-1.00 1.00    |
|1.00 0.00 0.00    |0.00 0.00     |
|0.00 0.00 0.00    |              |

#### (19)
Faça um programa em Pascal que leia dois números inteiros N e M como entrada e retorne como saı́da N mod M (o resto da divisão inteira de N por M ) usando para isto apenas operações de subtração. O seu programa deve considerar que o usuário entra com N sempre maior do que M.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|30 7              |2             |
|3 2               |1             |
|12 3              |0             |

#### (20)
Faça um programa em Pascal que leia um número n > 0 do teclado e imprima a tabuada de n de 1 até 10.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |5 x 1 = 5<br>5 x 2 = 10<br>5 x 3 = 15<br>5 x 4 = 20<br>5 x 5 = 25<br>5 x 6 = 30<br>5 x 7 = 35<br>5 x 8 = 40<br>5 x 9 = 45<br>5 x 10 = 50|

---

### Exercícios Complementares

* [Cálculos Simples](#Cálculos-Simples)<br>
* [Desvios Condicionais](#Desvios-Condicionais)

#### Cálculos Simples

#### (1)
Faça um programa que leia um número inteiro e imprima o seu sucessor e seu antecessor, na mesma linha.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1                 |2 0           |
|100               |101 99        |
|-3                |-2 -4         |

#### (2)
Faça um programa que leia dois números inteiros e imprima o resultado da soma deste dois valores. Antes do resultado, deve ser impressa a seguinte mensagem "SOMA = ".

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1 2               | SOMA = 3     |
|100 -50           | SOMA = 50    |
|-5 -40            | SOMA = -45   |

#### (3)
Faça um programa em Pascal que leia dois números reais, um será o valor de um produto e outro o valor de desconto que esse produto está recebendo. Imprima quantos reais o produto custa na promoção.

<table>
  <tr>
   <td colspan="2"><b>Exemplo de Entrada</b></td>
   <td><b>Saída Esperada</b></td>
  </tr>
  <tr>
    <td>Valor Original</td>
    <td>Desconto</td>
   <td>Valor na Promoção</td>
  </tr>
  <tr>
    <td>500.00</td>
    <td>50.00</td>
    <td>450.00</td>
  </tr>
  <tr>
    <td>10500.00</td>
    <td>500.00</td>
    <td>10000.00</td>
  </tr>
  <tr>
    <td>90.00</td>
    <td>0.80</td>
    <td>89.20</td>
  </tr>
</table>

#### (4)
Faça um programa que leia dois números reais e imprima a média aritmética entre esses dois valores.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|1.2 2.3           |1.75          |
|750 1500          |1125.00       |
|8900 12300        |10600.00      |

#### (5)
Faça um programa que leia um número real e imprima a terça parte deste número.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3                 |1.00          |
|10                |3.33          |
|90                |30.00         |

#### Desvios Condicionais

#### (1)
Faça um programa que leia um número e o imprima caso ele seja maior que 20.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|30.56             |30.56         |
|20                |              |
|20.05             |20.05         |

#### (2)
Faça um programa em Pascal que leia dois valores numéricos inteiros e efetue a adição; se o resultado for maior que 10, imprima o primeiro valor. Caso contrário, imprima o segundo.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|7<br>4            |7             |
|7<br>2            |2             |
|3<br>7            |7             |

#### (3)
Faça um programa em Pascal que imprima se um dado número N inteiro (recebido através do teclado) é PAR ou ÍMPAR.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |IMPAR         |
|3                 |IMPAR         |
|2                 |PAR           |

#### (4)
Faça um programa em Pascal para determinar se um dado número N (recebido através do teclado) é POSITIVO, NEGATIVO ou NULO.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |POSITIVO      |
|-3                |NEGATIVO      |
|0                 |NULO          |

#### (5)
Faça um programa em Pascal que leia dois números e efetue a adição. Caso o valor somado seja maior que 20, este deverá ser apresentado somando-se a ele mais 8; caso o valor somado seja menor ou igual a 20, este deverá ser apresentado subtraindo-se 5.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|13.14<br>5        |13.14         |
|-3<br>-4          |-12.00        |
|16<br>5           |29.00         |

#### (6)
Faça um programa em Pascal que imprima qual o menor valor de dois números A e B, lidos através do teclado.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5.35<br>4         |4.00          |
|-3<br>1           |-3.00         |
|6<br>15           |6.00          |

#### (7)
Faça um programa em Pascal para determinar se um número inteiro A é divisı́vel por um outro número inteiro B. Esses valores devem ser fornecidos pelo usuário.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5<br>10           |nao           |
|4<br>2            |sim           |
|7<br>21           |nao           |

#### (8)
Faça um programa em Pascal que leia um número inteiro e informe se ele é ou não divisı́vel por 5.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |sim           |
|-5                |sim           |
|3                 |nao           |

#### (9)
Faça um programa em Pascal que leia um número inteiro e imprima se este é multiplo de 3.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |nao           |
|-3                |sim           |
|15                |sim           |

#### (10)
Faça um programa em Pascal que leia um número e imprima a raiz quadrada do número caso ele seja positivo ou igual a zero e o quadrado do número caso ele seja negativo.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|0                 |0.00          |
|4                 |2.00          |
|-5                |25.00         |

#### (11)
Faça um programa em Pascal que leia um número e informe se ele é divisı́vel por 3 e por 7

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|21                |sim           |
|7                 |nao           |
|3                 |nao           |
|-42               |sim           |

#### (12)
A prefeitura de Contagem abriu uma linha de crédito para os funcionários estatutários. O valor máximo da prestação não poderá ultrapassar 30% do salário bruto. Faça um programa em Pascal que permita entrar com o salário bruto e o valor da prestação, e informar se o empréstimo pode ou não ser concedido.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|500<br>200        |nao           |
|1000.50<br>250.10 |sim           |
|1000<br>300       |sim           |
