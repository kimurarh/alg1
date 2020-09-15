## Terceira Prova

Aqui estão dispostos os enunciados de provas antigas.<br>
As resoluções estão nesta mesma pasta.

* [2019/1](#20191)
* [2018/2](#20182)
* [2018/1](#20181)
* [2017/1](#20171)
* [2016/1](#20161)
* [2015/1](#20151)
* [2014/2](#20142)
* [2014/1](#20141)

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

### 2016/1

<b>Questão Única:</b> (100  pontos) Jogo Batalha Naval

<b>DESCRIÇÃO</b>: O jogo de batalha naval é jogado em um tabuleiro retangular com N linhas e M colunas. Cada posição desse tabuleiro é um quadrado que pode conter água ou uma parte de um navio. Dizemos que dois quadrados são vizinhos se estes possuem um lado em comum. Se duas partes de navio estão em posições vizinhas, então essas duas partes pertencem ao mesmo navio. A regra do jogo proíbe que os quadrados de duas partes de navios distintos tenham um canto em comum
(em outras palavras, que quadrados de duas partes de navios distintos compartilhem um vértice). 
    
Cada disparo que um jogador faz deve ser feito em um dos quadrados do tabuleiro do outro jogador. Um jogador informa ao outro a coluna e a linha do quadrado alvo do disparo. Para que um navio seja destruído, o jogador deve acertar todas as partes desse navio. O jogador não pode atirar no mesmo lugar mais de uma vez.

<b>TAREFA</b>: Escreva um programa Pascal estruturado (ou seja, com procedimentos e/ou funções) para, dadas a configuração do tabuleiro e uma sequência de disparos feitos por um jogador, determinar o número de navios do outro jogador que foram destruídos.

<b>ENTRADA</b>: A primeira linha da entrada contém dois números inteiros N e M (1 <= N, M <= 100) representando respectivamente o número de linhas e de colunas do tabuleiro. As N linhas seguintes correspondem ao tabuleiro do jogo. Cada uma dessas linhas contém M caracteres, indicando o conteúdo da posição correspondente no tabuleiro. Se esse caractere for ".", essa posição contém água; se for "#", essa posição contém uma parte de um navio. A próxima linha contém um número K que é o número de disparos feitos pelo jogador (1 <= K <= N x M). As K linhas seguintes indicam os disparos feitos pelo jogador. Cada linha contém dois inteiros L e C, indicando a linha e a coluna do disparo feito pelo outro jogador (1 <= L <= N e 1 <= C <= M).
    
<b>SAIDA</b>: Uma única linha contendo um único número inteiro: o número de navios destruídos.
    
<b>AVALIAÇÃO</b>:
1. (70 pontos): implementação na qual todos os navios são compostos por exatamente uma parte, ou seja, cada navio ocupa extamente um quadrado (exemplo da entrada 1).

2. (30 pontos): implementação na qual navios podem ocupar mais de um quadrado (exempos de entrada 2 e 3); definições da implementação anterior podem ser reutilizadas.

Observe que não é estritamente necessário implementar ambas as versões, uma vez que a versão 2 também resolve a situação da versão 1.

<b>EXEMPLOS</b>:
```
Exemplo 1 (6 navios)        Entrada 2 (4 navios)        Entrada 3 (3 navios)
5 5                         5 5                         7 7
. . # . #                   . . # # #                   . # . . . . #
# . . . .                   . . . . .                   # # # . . # #
. . . # .                   # # # # #                   . # . . . . #
# . . . .                   . . . . .                   . . . . # . #
. . . # .                   # . # # .                   . # . . # . #
5                           5                           . # # # # . #
1 3                         5 1                         . . . . . . .
1 4                         5 2                         8    
1 5                         1 3                         1 1
2 1                         1 4                         1 2
3 4                         1 5                         2 1
                                                        2 2
Saida:                      Saida:                      2 3
4                           2                           3 2
                                                        5 2
                                                        6 2
                                                        
                                                        Saida:
                                                        1
```                                                 
 
### 2015/1

<b>Questão Única:</b> (100  pontos) 

<b>Introdução</b>: Suponha que você receba o mapa de um labirinto, no qual existem alguns caminhos que levam da entrada dele para a saı́da e, como em todo labirinto, alguns caminhos que são becos sem saı́da. O problema é não apenas encontrar um caminho que leva à saı́da, mas determinar o menor caminho existente.

A seguir está um trecho de código em Pascal que resolve este problema usando um algoritmo clássico encontrado na literatura da computação. O código apresenta algumas declarações de constantes, tipos e variáveis bem como um programa principal que será detalhado em seguida.

```Pascal
Program labirinto;
Const
    MAX = 100;
    PAREDE = -1;
    VAZIO = 0;  
    LIN = 1;
    COL = 2;
Type
    labirinto= array [1..MAX,1..MAX] of integer;
    coordenada = array [1..2] of integer;
    fila= array [1..MAX] of coordenada;
Var
    L: labirinto;
    tamL, entrada, saida, elem, vizinho: coordenada;
    F: fila; tamF: integer;
    distancia: integer;
Begin
    iniciaFila(F, tamF);
    distancia := 1;
    lerLabirinto(L, tamL, entrada, saida);
    
    marcaElemLabirinto(L, saida, distancia);
    insereElemFila (F, tamF, saida);
    
    repeat
        retiraElemFila(F, tamF, elem);
        distancia := valorElemLabirinto(L, elem) + 1;
        "para cada vizinho a ser marcado de elem"
        begin
            marcaElemLabirinto(L, vizinho, distancia);
            insereElemFila(F, tamF, vizinho);
        end;
    until (filaVazia(F, tamF));

    imprimeMenorCaminho(L, entrada);
end.
```

<b>Detalhamento</b>: Este programa foi concebido para receber uma entrada de dados no seguinte formato: a primeira linha da entrada de dados contém as dimensões de uma matriz de inteiros; a segunda linha contém as coordenadas da entrada do labirinto (uma posição da matriz); a terceira linha contém as coordenadas da saı́da do labirinto (uma outra posição da matriz); as outras linhas contêm os elementos da matriz propriamente dita, constituı́da de elementos que
podem ser 0 (zero) ou -1 (menos 1). Os zeros representam posições pelas quais se pode “passar” na matriz, enquanto que os -1 representam “paredes”. Um exemplo de entrada de dados é:
```
6 12
1 1
6 12
 0  0  0 -1  0  0  0 -1  0 -1  0  0
 0 -1  0 -1  0 -1  0  0  0 -1  0 -1
 0  0  0  0  0 -1  0 -1 -1 -1  0 -1
-1  0 -1 -1  0 -1  0  0  0  0  0  0
 0  0  0  0  0  0  0 -1 -1  0 -1  0
 0 -1  0 -1 -1 -1  0  0 -1  0 -1  0
```
Note que um labirito pode possuir várias possibilidades de entrada e saı́da, mas o programa deve encontrar um caminho mı́nimo entre as coordenadas indicadas no arquivo de entrada passando apenas por elementos da matriz propriamente dita.

A ideia do algoritmo é marcar cada posição da matriz que não seja uma parede com valores inteiros que representam a distância desta posição para a saı́da. Para isto, ele inicia marcando a posição da saı́da com o valor 1 e toda outra posição (L,C) é marcada com o valor K desde que exista algum vizinho já marcado com valor (K-1). Os vizinhos válidos são: o da esquerda (L,C-1), o da direita (L,C+1), o da posição de cima (L-1,C) e o da posição de baixo (L+1,C), desde que estas coordenadas estejam dentro dos limites da matriz.

Após esta etapa, a matriz acima fica como mostrado na figura seguinte:
```
19 18 17 -1 13 12 11 -1 13 -1  7  8
18 -1 16 -1 14 -1 10 11 12 -1  6 -1
17 16 15 14 13 -1  9 -1 -1 -1  5 -1
-1 15 -1 -1 12 -1  8  7  6  5  4  3
15 14 13 12 11 10  9 -1 -1  6 -1  2
16 -1 14 -1 -1 -1 10 11 -1  7 -1  1
```

<b>Implementação</b>: Para implementar esta ideia, o programa principal, contendo ainda uma linha em pseudo-código, usa o seguinte algoritmo (que depende da correta inicialização das estruturas de dados): marca a posição da saı́da com o valor 1 (um) e insere seus vizinhos válidos no final de uma fila. Em seguida, até que a fila esvazie completamente, retira uma coordenada do inı́cio da fila, descobre qual é a distância K que esta tem da saı́da e para cada um dos seus vizinhos válidos: (1) anota K + 1 no vizinho; e (2) insere o vizinho no final da fila.

<b>Menor caminho</b>: Na última linha do programa, após o laço que marca as distâncias na matriz, existe uma chamada a um procedimento que recebe uma matriz preenchida como descrito acima e encontra o menor caminho para se chegar da entrada do labirinto na sua saı́da. O menor caminho é encontrado partindo-se da entrada do labirinto e escolhendo sucessivamente em cada etapa o vizinho que tem um valor menor que o atual, até se chegar na saı́da, que tem o valor 1. Basta anotar de alguma maneira este caminho e em seguida imprimı́-lo.

<b>Questão única</b> (100 pontos): Sem fazer este último procedimento, sua tarefa é refinar o programa principal e implementar todas as outras funções e procedimentos.

<b>Questão bônus</b> (10 pontos extra): Da maneira como você achar conveniente, implemente o procedimento que imprime o menor caminho.

### 2014/2

<b>Questão Única:</b> (100  pontos) 

Escreva um programa em linguagem Pascal que faz a leitura de duas matrizes (A e B) de valores inteiros e tamanhos NxN (N≤100) fornecido pelo usuario. Depois o programa ordena os elementos das duas matrizes em ordem crescente e as imprime. Ao final seu programa deve gerar uma terceira matriz (Z) com o tamanho de Nx(2N) que contera todos os elementos dasmatrizes A e B em ordem crescente.

```
.\prova3
3
6 8 7
2 3 5
1 9 4

11 14 17
13 15 18
16 12 10

Matriz A ordenada:

1 2 3
4 5 6
7 8 9

Matriz B ordenada:

10 11 12
13 14 15
16 17 18

Matriz Z:

1 2 3 4 5 6
7 8 9 10 11 12
13 14 15 16 17 18
```


### 2014/1

<b>Questão Única:</b> (100  pontos) Faça um programa que leia N datas, 1 ≤ N ≤ 20000, e as coloque em uma matriz DATAS N×3 , onde a primeira coluna corresponde ao dia, a segunda ao mês e a terceira ao ano. Seu programa deve imprimir na saı́da a matriz resultante da operação de colocar essas datas em ordem cronológica crescente. Por exemplo:
```
        | 15   1  1996 |             | 16   3  1951 |
        |  5  11  1965 |             | 25   6  1965 |
DATAS = | 16   3  1951 |     SAIDA = |  5  11  1965 |
        |  5   1  1996 |             |  5   1  1996 |
        | 25   6  1965 |             | 15   1  1996 |
```

