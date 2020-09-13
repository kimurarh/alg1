## Lista 11

### Tipos Abstratos de Dados

#### Introdução

A ideia de um Tipo Abstrato de Dados (TAD) é esconder (abstrair) o dado do programador, assim como as funções e procedimentos escondem (abstraem) o código que faz as operações sobre os dados, no sentido que o importante é saber o que é feito, não como é feito.

É evidente que o programador tem acesso pleno aos dados, mas em programas complexos ele deve evitar alterar diretamente os dados, mas sim passar por alterações controladas por chamadas de funções e procedimentos. Estas garantem a integridade dos dados, enquanto que o programador pode introduzir inconsistências nos dados quando acessa indevidamente alguma variável na memória.

Por exemplo, no exercício que segue, usaremos um vetor de inteiros cuja primeira posição armazena o tamanho deste vetor. Pois bem, todas as funções e procedimentos que usaremos cuidam muito bem da manutenção deste valor. Mas digamos que o programador "confiante" resolve alterar o valor da posição zero do vetor, por sua própria conta e assumindo a responsabilidade sobre isto, o que significa que ele poderá tornar o programa inconsistente. Sim, pois se ele escreve indevidamente na posição zero, vai alterar o tamanho do vetor.

Aqui estamos falando da diferença entre o que pode ser feito e o que não deve ser feito. Na arte de escrever programas é melhor pensar muito bem sobre o que não deve ser feito. Evidentemente o programador é soberano em suas decisões, mas via de regra, ele segue alguns princípios. Este é um deles.

#### O Tipo Abstrato de Dados Conjunto

No arquivo indicado abaixo nós fornecemos uma biblioteca de funções que operam sobre o TAD conjunto que é implementado em forma de um vetor cujos elementos estão ordenados em ordem crescente. A estrutura armazena o tamanho do vetor em sua posição zero. Apresentamos os códigos de todas as funções e procedimentos úteis para vários tipos de problemas diferentes, mas em particular para o problema que apresentaremos a seguir.

Como um bom TAD, as implementações fornecidas poderiam ser diferentes, por exemplo usando vetores não ordenados ou outras estruturas de dados que vocês conhecerão em algoritmos 2 ou programação 1.

Em todo caso, ao resolver este problema, vocês poderão usar esta biblioteca fornecida para resolver o problema, MAS SEM ALTERAR QUALQUER LINHA DO CÓDIGO FORNECIDO. Nós garantimos que eles funcionam.

Em resumo, vocês poderão chamar qualquer função ou procedimento fornecido, mas não poderão alterar os seus códigos. Decidam quais são úteis ou não.

O importante é observar os protótipos das funções e procedimentos e saber utilizá-los para resover o problema abaixo. Nós queremos que vocês apenas USEM as funções e procedimentos para resolver um problema.

Nós procuramos indicar nos comentários destas funções e procedimentos o comportamento delas, bem como uma indicação intuitiva do custo das operações para cada operação.

Claro que é um bom exercício ENTENDER os algoritmos fornecidos que manipulam a estrutura de dados, mas isso vocês podem fazer em um outro momento. Por exemplo, um dia vocês podem tentar implementar uma procedure "diferença de conjuntos", mas não neste exercício, façam isso depois.

#### Como resolver o problema abaixo:

Neste exercício vamos praticar o uso de Tipos Abstratos de Dados (TAD). Usaremos o TAD "tad_conjunto" que é fornecido na após o enunciado do exercício.

Você deve baixar este arquivo em algum diretório da sua conta pessoal. Atenção: você não deve alterar nada neste arquivo além do programa principal. A implementação das funções e procedimentos fornecidas deverá permanecer inalterada! Evidentemente você pode escrever outras funções e procedimentos para ajudar na resolução do problema.

Mas o importante deste exercício é que você saiba USAR as chamadas para as funçoes e procedimentos fornecidos para resolver o problema que segue abaixo. Claro que não precisa usar todas elas, escolha as que são pertinentes para o teu algoritmo. Se precisar, implemente outras. Em suma, vocês devem entender como resolver um problema usando conjuntos! Simples assim.

#### O problema

Um grupo de super-heróis recebeu um chamado e precisa montar uma equipe para ir resolver o problema. Cada um dos membros do grupo tem uma série de poderes, como super força, super velocidade, super visão etc. O chamado indicava uma lista de habilidades que pelo menos um dos membros da equipe enviada deveria ter. Caso uma habilidade não seja contemplada a missão falhará. O grupo de super-heróis preparou uma lista de possíveis equipes. Nossa tarefa, como parte da equipe de TI do grupo, é encontrar qual destas possíveis equipes satisfaz os critérios e tem o menor tamanho.

Você deve ler, inicialmente, uma lista de habilidades para cada super-herói. Os super-heróis são numerados, a partir de 1. As
habilidades são números inteiros. Uma lista de habilidades termina com um 0 (zero). A entrada, desta parte, consistirá de uma sequência de
listas de habilidades, terminando com uma lista vazia (que não é de nenhum super-herói).

Após esta parte, você deve ler os requisitos da missão, que também são descritos por uma lista de habilidades, nos mesmos moldes da parte anterior.

Em seguida você deve ler uma lista de equipes, onde cada equipe também é uma sequência de números (de cada super-herói) terminada com 0 (zero). A lista de equipes termina com uma equipe vazia.

Como saída você deve escrever a lista dos super-heróis da equipe que melhor satisfaz os requisitos. Caso nenhuma equipe satisfaça, você deve escrever "NENHUMA".

|Exemplo de entrada|Saída esperada|
|------------------|--------------|
|1 2 3 4 0 // super-herói 1<br>2 4 8 20 17 0 // super-herói 2<br>99 5 12 6 0 // super-herói 3<br>1000 0 // super herói 4<br>4 9 3 99 0 // super-herói 5<br>0<br>4 99 1000 0 // habilidades requeridas<br>1 2 3 0 // equipe 1<br>1 2 3 4 5 0 // equipe 2<br>2 4 5 0 // equipe 3<br>5 0 // equipe 4<br>4 5 0 // equipe 5<br>1 2 5 0 // equipe 6<br>0|4 5|

```Pascal
program vingadores;

const max = 101;

type 
     elemento = longint;
     conjunto = array [0..MAX+1] of elemento;
(* 
   Uma vez que o tipo elemento eh longint, a posicao zero do vetor (c[0])
   contera o tamanho do vetor, se os elementos fossem de outro tipo isto 
   poderia ser feito.
   Os elementos propriamente ditos iniciam na posicao 1 e terminam na posicao MAX.
   A ultima posicao (c[MAX+1]) eh utilizada como sentinela em algumas funcoes. 
*)

procedure inicializar_conjunto (var c: conjunto);
(* 
  cria as estruturas necessarias para o tipo conjunto.
  custo: constante.
*)
begin
     c[0]:= 0;
end;

function eh_vazio (c: conjunto): boolean;
(* 
  retorna true se o conjunto c eh vazio.
  custo: constante.
*)
begin
     eh_vazio:= c[0] = 0;
end;

function cardinalidade (c: conjunto): longint;
(* 
  retorna a cardinalidade do conjunto c 
  custo: constante.
*)
begin
     cardinalidade:= c[0];
end;

function pertence (x: elemento; c: conjunto): boolean;
(* 
  retorna true se x pertence ao conjunto c e false caso contrario.
  como a estrutura esta ordenada é feita uma busca binária.
  custo: proporcial ao logaritmo do tamanho do conjunto.
*)
var ini, fim, meio: longint;
begin
     ini:= 1;
     fim:= c[0];
     meio:= (ini + fim) div 2;
     while (ini <= fim) and (x <> c[meio]) do
     begin
          if x < c[meio] then
               fim:= meio - 1
          else
               ini:= meio + 1;
          meio:= (ini + fim) div 2;
     end;
     if ini <= fim then
          pertence:= true
     else
          pertence:= false;
end;

procedure uniao (c1, c2: conjunto; var uni: conjunto);
(* 
  obtem a uniao dos conjuntos c1 e c2. Lembrar que eles estao ordenados.
  custo: proporcial a soma dos tamanhos dos vetores (tem que percorrer os dois).
*)
var i,j,k,l: longint;
begin
     i:= 1;
     j:= 1;
     k:= 0;
     while (i <= c1[0]) and (j <= c2[0]) do
     begin
          if c1[i] < c2[j] then
          begin
               k:= k + 1;
               uni[k]:= c1[i];
               i:= i + 1;
          end
          else 
               if c1[i] > c2[j] then 
               begin
                    k:= k + 1;
                    uni[k]:= c2[j];
                    j:= j + 1;
               end
               else (* descarta um dos repetidos *)
               begin
                    k:= k + 1;
                    uni[k]:= c1[i];
                    i:= i + 1;
                    j:= j + 1;
               end;
     end; (* while *)
     (* acrescenta o que sobrou do maior conjunto *)
     for l:= i to c1[0] do
     begin
          k:= k + 1;
          uni[k]:= c1[i];
          i:= i + 1;
     end;
     for l:= j to c2[0] do
     begin
          k:= k + 1;
          uni[k]:= c2[j];
          j:= j + 1;
     end;
     uni[0]:= k;
end;

procedure intersecao (c1, c2: conjunto; var intersec: conjunto);
(* 
  obtem a intersecao dos conjuntos c1 e c2. Lembrar que eles estao ordenados.
  custo: proporcional ao tamanho do vetor c1. 
  obs.: voce pode depois modificar para que o custo seja proporcional ao 
        tamanho do menor conjunto.
*)
var i,j,k: longint;
begin
     i:= 1;
     j:= 1;
     k:= 0;
     while (i <= c1[0]) and (j <= c2[0]) do
          if c1[i] < c2[j] then
               i:= i + 1
          else 
               if c1[i] > c2[j] then 
                    j:= j + 1
               else (* elemento nos dois conjuntos *)
               begin
                    k:= k + 1;
                    intersec[k]:= c1[i];
                    i:= i + 1;
                    j:= j + 1;
               end;
     intersec[0]:= k; 
end;

function contido (c1, c2: conjunto): boolean;
(* 
  retorna true se o conjunto c1 esta contido no conjunto c2 e false caso contrario.
  custo: proporcional ao tamanho do conjunto c1.
*)
var i,j: longint;
    ok: boolean;
begin
     if c1[0] > c2[0] then
          contido:= false
     else
     begin
          ok:= true;
          i:= 1;
          j:= 1;
          while (i <= c1[0]) and (j <= c2[0] ) and ok do
               if c1[i] < c2[j] then
                    ok:= false
               else if c1[i] > c2[j] then
                    j:= j + 1
               else
               begin
                    i:= i + 1;
                    j:= j + 1;
               end;
          if not ok then
               contido:= false
          else
               if i > c1[0] then
                    contido:= true
               else
                    contido:= false;
     end;
end;

procedure inserir (x: elemento; var c: conjunto);
(* 
  insere o elemento x no conjunto c, mantem os elementos ordenados.
  custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto.
*)
var i: longint;
begin
     if not pertence (x,c) then
     begin
          i:= c[0];
          while (i >= 1) and (x <= c[i]) do
          begin
               c[i+1]:= c[i];
               i:= i - 1;
          end;
          (* agora pode inserir x *)
          c[i+1]:= x;
          c[0]:= c[0] + 1;
     end;
end;

procedure remover (x: elemento; var c: conjunto);
(* 
  remove o elemento x do conjunto c. 
  usa uma sentinela na posicao posterior a ultima.
  custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto.
*) 
var i, indice: longint;
begin
     (* primeiro acha a posicao do elemento *)
     indice:= 1;
     c[c[0]+1]:= x;
     while x <> c[indice] do
          indice:= indice + 1;
     if indice < c[0] + 1 then (* achou o elemento *)
     begin
          (* compacta o vetor *)
          for i:= indice to c[0]-1 do
               c[i]:= c[i+1];
          c[0]:= c[0] - 1;
     end;
end;

procedure ler_conjunto (var c: conjunto);
(* 
  cria um conjunto, a posicao zero contem o tamanho dele.
  custo: proporcional ao tamanho do conjunto.
*)
var i: longint;
    x: elemento;
begin
     read (x);
     i:= 0;
     while x <> 0 do
     begin
          inserir (x,c);
          i:= i + 1;
          read (x);
     end;
end;

procedure imprimir_conjunto (c: conjunto);
(* 
  imprime um conjunto.
  custo: proporcional ao tamanho do conjunto.
*) 
var i: longint;
begin
     for i:= 1 to c[0]-1 do
          write (c[i],' ');
     writeln (c[c[0]]); 
end;

procedure copiar_conjunto (c1: conjunto; var c2: conjunto);
(*
  copia os elementos do conjunto c1 para o conjunto c2.
  custo: proporcional ao tamanho do conjunto c1.
*)
var i: longint;
begin
     for i:= 0 to c1[0] do
          c2[i]:= c1[i];
end;

function retirar_um_elemento (var c: conjunto): elemento;
(*
  escolhe um elemento qualquer do conjunto para ser removido, remove, e o retorna.
  se o vetor estiver vazio, retorna zero, que nao corresponde a nenhuma habilidade.
  custo: constante, pois optamos por devolver o ultimo elemento.
*)
begin
     if not eh_vazio(c) then
     begin
          retirar_um_elemento:= c[c[0]];
          c[0]:= c[0] - 1;
     end
     else
          retirar_um_elemento:= 0;
end;

begin
(* 
  escreva aqui a solucao para o problema dos vingadores
*)
end.
```
