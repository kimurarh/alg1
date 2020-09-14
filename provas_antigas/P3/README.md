## Terceira Prova

Aqui estão dispostos os enunciados de provas antigas.<br>
As resoluções estão nesta mesma pasta.

* [2019/1](#20191)
* [2018/2](#20182)
* [2018/1](#20181)
* [2017/1](#20171)

### 2019/1

<b>Questão 1:</b> (40  pontos) Considere o tipo abstrato de dados Pilha e os protótipos das funções e procedimentos:
``` Pascal
CONST MAX = 100;
TYPE
    elemento = longint;
    pilha = record
        ini: longint;
        v: array [1..MAX] of elemento;
    end;
    
procedure inicializa_pilha (var p: pilha);
(* inicializa a estrutura *)

function pilha_vazia (p: pilha): boolean;
(* retorna true se a pilha esta vazia *)

procedure empilha (x: elemento; var p: pilha);
(* insere x no inicio da pilha *)

function desempilha (var p: pilha): elemento;
(* retorna o elemento do inicio da pilha e o remove dela *)

function topo (p: pilha): elemento;
(* retorna o elemento do inicio da pilha, sem remove-lo *)
```

Implemente um programa em Pascal que receba como entrada uma lista de números inteiros terminada em zero. O zero não deve ser processado e apenas indica que a entrada de dados terminou. Seu programa deve imprimir SIM caso a lista de números tenha pares bem formados de números de mesmo valor absoluto, sendo que o positivo ocorre sempre antes do seu respectivo negativo. Seu programa deve imprimir NAO em caso contrário. Apenas a tı́tulo de exemplo, caso os números fossem todos 1 e -1, isto poderia ser visto como parenteses abertos (1) e parênteses fechados (-1), representando uma expressão de parênteses corretamente balanceada. Não é necessário escrever os códigos das funções e procedimentos do TAD Pilha, considere que eles estão corretamente implementados em uma biblioteca. Apenas resolva o problema usando o TAD Pilha.

```
Exemplo 1:
1 2 3 4 -4 -3 5 6 -6 -5 -2 -1
SIM
Exemplo 2:
1 2 3 -1 -2 -3
NAO
```

<b>Questão 2:</b> (60  pontos) Considere que a partir de uma matriz podemos definir uma ampulheta como sendo feita de 7 células da seguinte forma:
```
A B C
  D
E F G
```
Por exemplo, a matriz seguinte:
```
2 3 0 0 0
0 1 0 0 0
1 1 1 0 0
0 0 2 4 4
0 0 0 2 0
```
Possui as seguintes 9 ampulhetas:
```
2 3 0   3 0 0   0 0 0
  1       0       0
1 1 1   1 1 0   1 0 0 

0 1 0   1 0 0   0 0 0
  1       1       0
0 0 2   0 2 4   2 4 4 

1 1 1   1 1 0   1 0 0
  0       2       4
0 0 0   0 0 2   0 2 0 
```
a soma dos elementos de cada uma das ampulhetas é:
```
9, 5, 1, 4, 8, 10, 3, 6 e 7
```
Faça um programa em Pascal que leia uma matriz de números inteiros de dimensão quadrada 0 ≤ N ≤ 100, e que imprima o maior valor da soma dos elementos dentre todas as ampulhetas desta matriz. 

Dado o exemplo acima a saı́da esperada do programa é:
```
10
```

### 2018/2

<b>Questão Única:</b> (100  pontos)

Polling é uma técnica utilizada em Redes Neurais Convolucionais (CNN’s) que reduz a dimensionalidade da imagem visando agrupar caracterı́sticas similares em uma única informação. A funcionalidade é similar a convolução, porém mais simples.

Uma variação é a MaxPooling que aplica um filtro de máxima para cada pedaço da imagem. A Figura 1 ilustra o processo. Neste caso o passo aplicado foi de tamanho 2, ou seja, é analizada uma área 2 × 2 que é saltada e nenhum elemento é novamente analizado. Uma outra possibilidade é que o passo seja de tamanho 1, assim a dimensão da imagem é reduzida somente em uma linha e uma coluna (ver exemplo de saı́da 2).

![imagem](imgs/2018-2.png)

Faça um programa em Free Pascal que leia um tamanho N , 0 < N ≤ 1024, sendo N um número par e lê também qual o tamanho passo (1 ou 2). E que leia uma uma matriz quadrada N × N de números inteiros. O programa realiza uma operação de MaxPooling com o passo definido na matriz lida e imprime a matriz resultante. Montar as funções e/ou procedimentos necessários para a execução do programa.

```
Exemplo 1:

4
2
 12  20  30   0
  8  12   2   0
 34  70  37   4
112 100  25  12

Saída:
 20  30
112  37

Exemplo 2:
4
1
 12  20  30   0
  8  12   2   0
 34  70  37   4
112 100  25  12

Saída:
 20  30  30
 70  70  37
112 100  37
```

### 2018/1

<b>Questão Única:</b> (100  pontos) Considere as seguintes constantes e tipos assim definidos:
```Pascal
    CONST MAX = 200;
    TYPE tpMatriz = array [1..MAX, 1..MAX] of integer;
```
Considere os seguintes protótipos de funções e procedimentos, junto da descrição do seu funcionamento:

* function achar_X (var M: tpMatriz; N, linIni, colIni, tam: integer) : boolean;

Esta função deve procurar em uma matriz M N ×N por um conjunto de elementos cuja disposição forma visualmente um “X” constituı́do de números iguais, conforme pode ser visto na figura da esquerda abaixo.

A função recebe a matriz, uma coordenada (linIni, colIni) – linha e coluna respectivamente - e um número inteiro tam (2 ≤ tam ≤ N ) que representa o tamanho do “X”. A função retorna TRUE se os elementos contidos no “X” de tamanho tam, cujo canto superior esquerdo está na coordenada (linIni, colIni), possuem todos o mesmo valor, e retorna FALSE caso contrário. O teste da existência do “X” não deve ultrapassar os limites da matriz.

Exemplo: A matriz M 6×6 da figura abaixo, na esquerda, possui um “X” de tamanho 4 constituı́da de elementos “1” iniciando na coordenada (2, 2). Assim, se a função receber esta matriz com N = 6, linIni = 2, colIni = 2 e tam = 4, deve retornar TRUE. Se receber a mesma matriz com N = 6, linIni = 1, colIni = 1 e tam = 6, deve retornar FALSE (pois esse “X” não existe). Se receber a mesma matriz com N = 6, linIni = 4, colIni = 4 e tam = 4, deve retornar FALSE (pois ultrapassa os limites da matriz).


* procedure inverte_cor (var M: tpMatriz; N: integer);

Este procedimento recebe uma matriz M N ×N . O objetivo é inverter as cores da matriz. A inversão de cor funciona ao obter o maior número da matriz max e, para cada coordenada da matriz, subtrair de max o valor da coordenada.

Exemplo: Para a matriz M 6×6 da esquerda abaixo, o resultado será a matriz da direita.


* procedure ler_matriz (var M: tpMatriz; N: integer);

Este procedimento lê do teclado uma matriz M N ×N de números inteiros.


* procedure imprimir_matriz (var M: tpMatriz; N: integer);

Este procedimento imprime na tela uma matriz M N ×N de números inteiros.


#### O QUE DEVE SER FEITO (NESTA ORDEM):
1. Suponha, para este item 1, que as funções e procedimentos acima já estão implementadas e funcionais. Faça um programa Pascal completo que utiliza as funções e procedimentos acima para resolver o seguinte problema. O programa deve ler N e uma matriz N × N de números inteiros e imprimir a matriz resultante do seguinte processo. Se a matriz contém um “X” de qualquer tamanho tam (onde 2 ≤ tam ≤ N ), então deve-se imprimir a matriz com as cores invertidas. Caso contrário, deve-se imprimir a matriz sem modificações. 

2. Implemente as funções e procedimentos acima.

```
    2 3 1 5 2 3     3 2 4 0 3 2
    4 1 3 2 1 1     1 4 2 3 4 4
    2 2 1 1 3 2     3 3 4 4 2 3
    3 5 1 1 2 3     2 0 4 4 3 2
    2 1 4 4 1 4     3 4 1 1 4 1
    5 5 2 3 4 3     0 0 3 2 1 2

```

### 2017/1

<b>Questão Única:</b> (100  pontos) Considere as seguintes constantes e tipos assim definidos:
```Pascal
    CONST MAX = 200;
    TYPE tpMatriz = array [1..MAX, 1..MAX] of integer;
```

Considere os seguintes protótipos de funções e procedimentos juntamente com uma descrição do seu funcionamento:

* function achar_borda_quadrada (var M: tpMatriz; N: integer; linIni, colIni, tam: integer): boolean;

Esta função recebe uma matriz M N ×N , uma coordenada [linIni, colIni] e um número inteiro tam (2 ≤ tam ≤ N ) que representa o tamanho do lado de um quadrado. A função deve retornar TRUE se os elementos contidos na borda quadrada de tamanho tam cujo canto superior esquerdo está nas coordenadas definidas pela linha linIni e coluna colIni possuem todos o mesmo valor e retorna FALSE em caso contrário. O teste da existência dessa borda não deve ultrapassar os limites da matriz.

Exemplo: A matriz M 6×6 abaixo possui uma borda quadrada de tamanho 4 constituída de elementos “1” iniciando na linha linIni = 2 e na coluna colIni = 2. Portanto, se a função receber esta matriz com N = 6, linIni = 2, colIni = 2 e tam = 4, deve retornar TRUE. Por outro lado, se receber a mesma matriz com N = 6, linIni = 1, colIni = 1 e tam = 6, deve retornar FALSE.
```
    2 3 1 5 2 3
    4 1 1 1 1 1
    2 1 2 3 1 2
    3 1 3 4 1 3
    1 1 1 1 1 4
    5 1 2 3 4 3
```

* procedure remover_cor (var M: tpMatriz; N, num: integer);

Este procedimento recebe uma matriz M N ×N e um número inteiro num. O objetivo é eliminar o número num da matriz, substituindo cada ocorrência por um zero.

Exemplo: Se o procedimento receber a matriz M 6×6 da esquerda abaixo com N = 6 e num = 1, o resultado será a matriz da direita.

```
    2 3 1 5 2 3     2 3 0 5 2 3
    4 1 1 1 1 1     4 0 0 0 0 0
    2 1 2 3 1 2     2 0 2 3 0 2
    3 1 3 4 1 3     3 0 3 4 0 3
    1 1 1 1 1 4     0 0 0 0 0 4
    5 1 2 3 4 3     5 0 2 3 4 3 
```

* procedure ler_matriz (var M: tpMatriz; N: integer);

Este procedimento lê do teclado uma matriz M N ×N de números inteiros.

* procedure imprimir_matriz (var M: tpMatriz; N: integer);

Este procedimento imprime na tela uma matriz M N ×N de números inteiros.

#### O QUE DEVE SER FEITO:
1. Implemente as funções e procedimentos acima;

2. Faça um programa principal que leia uma matriz N × N de números inteiros e imprima a matriz resultante do seguinte processo:

(a) Se a matriz possuir alguma borda quadrada com tamanho pelo menos 2 e cujo canto superior esquerdo esteja na coordenada [1, 1], de maneira que esta borda tenha todos os elementos com um mesmo valor k, todas as ocorrências de k na matriz devem ser substituídas por zero. O processo pode terminar assim que a primeira borda for encontrada. 

Exemplo: A figura abaixo mostra todas as bordas que iniciam em [1, 1] que devem ser procuradas em uma matriz 6 × 6.

```
1 1 - - - -     2 2 2 - - -     3 3 3 3 - -     4 4 4 4 4 -     5 5 5 5 5 5
1 1 - - - -     2 - 2 - - -     3 - - 3 - -     4 - - - 4 -     5 - - - - 5
- - - - - -     2 2 2 - - -     3 - - 3 - -     4 - - - 4 -     5 - - - - 5
- - - - - -     - - - - - -     3 3 3 3 - -     4 - - - 4 -     5 - - - - 5
- - - - - -     - - - - - -     - - - - - -     4 4 4 4 4 -     5 - - - - 5
- - - - - -     - - - - - -     - - - - - -     - - - - - -     5 5 5 5 5 5
```

Assim, no caso da matriz M 6×6 da esquerda abaixo, existe uma borda de tamanho 4 que inicia na coordenada [1, 1] formada apenas por elementos de valor 2 e portanto o resultado da operação deve ser a matriz da direita, na qual todas as ocorrências do 2 foram substituídas por zeros.

```
2 2 2 2 2 2     0 0 0 0 0 0
2 1 4 2 5 1     0 1 5 0 5 1
2 1 1 2 2 2     0 1 1 0 0 0
2 2 2 2 5 4     0 0 0 0 5 4
2 5 1 2 1 3     0 5 1 0 1 3
2 1 2 2 2 5     0 1 0 0 0 5
```

(b) Se existir uma borda quadrada de tamanho exatamente 3 em qualquer lugar da matriz, verifique o número k que está no interior desta borda e elimine todas as ocorrências de k de toda a matriz, substituindo-as por zero. Este processo deve ser feito após o anterior ter sido concluído. Pode haver mais de uma borda deste tipo e cada uma pode ter um k diferente.

O processo pode parar assim que a primeira borda for encontrada, se houver uma.

Exemplo: Na matriz M 6×6 da esquerda abaixo, existe uma borda de tamanho 3 cujo canto superior esquerdo está na coordenada [3, 1]. Para esta borda, o número no interior é 5. O resultado deve ser a matriz da direita, na qual todas as ocorrências do 5 foram substituídas por zeros.
```
2 3 1 5 2 3     2 3 1 0 2 3
4 1 5 1 5 1     4 1 0 1 0 1
1 1 1 3 1 2     1 1 1 3 1 2
1 5 1 4 1 3     1 0 1 4 1 3
1 1 1 5 5 4     1 1 1 0 0 4
5 1 2 5 5 5     0 1 2 0 0 0
```
