## Lista 8

* [Vetores](#Vetores)

### Vetores

#### (0) Maximizar Soma
Faça um programa em Free Pascal que leia um número natural 0 < n ≤ 100 e em seguida leia uma sequência de n números inteiros. Seu programa deve determinar o valor do subsequência que maximize a soma dos seus elementos.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|12<br>5 2 -2 -7 3 14 10 -3 9 -6 4 1|33|

* <b>Observação 1</b>: O valor 33 da saı́da esperada acima, foi obtido pela soma dos valores dos ı́ndices de 5 a 9, isto é, v[5] = 3 até v[9] = 9.

* <b>Observação 2</b>: Idealmente, seu programa deve fazer o menor número possı́vel de somas dos elementos dos vetores, embora o FARMA-ALG apenas checa se sua resposta está correta. Você consegue fazer um programa que nunca some duas vezes uma sequência que já foi somada antes? Teste isso fora do FARMA-ALG.

#### (1) Compactação
Faça um programa em Free Pascal que leia diversas linhas nas quais as linhas ı́mpares contém o tamanho n (0 ≤ n ≤ 100) da sequência de números inteiros que deve ser lida na linha subsequente. Quando uma linha ı́mpar contiver o valor zero significa que a entrada de dados acabou e seu programa deverá encerrar com a impressão de todas as sequências originais e também compactadas pela eliminação de todos os elementos repetidos de cada sequência.

No exemplo abaixo, O significa a sequência original e C a sequência compactada.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5<br>2 4 7 -1 2<br>3<br>1 1 1<br>7<br>3 4 5 3 7 5 1<br>0|O: 2 4 7 -1 2<br>C: 2 4 7 -1<br><br>O: 1 1 1<br>C: 1<br><br>O: 3 4 5 3 7 5 1<br>C: 3 4 5 7 1|

#### (2) Ocorrências
Fazer um programa em Free Pascal que leia do teclado dois números naturais 0 < n, m ≤ 100. Em seguida, leia duas sequências de respectivamente n e m números também naturais, sendo garantidamente m < n.

Seu programa deve determinar quantas vezes a segunda sequência ocorre na primeira.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|7<br>2<br>18 23 6 14 6 31 13<br>12 20|0|
|9<br>4<br>18 23 6 14 6 18 23 6 14<br>18 23 6 14|2|
|30<br>3<br>2 4 2 1 6 1 7 2 9 10 2 4 2 1 8 11 12 13 2 7 1 5 6 1 3 2 4 2 4 2<br>2 4 2|4|

#### (3) Subsequências
Faça um programa em Free Pascal que leia um número natural 0 < n ≤ 100 e em seguida leia uma sequência de n números também naturais. Seu programa deve verificar se existem duas subsequências iguais nesta sequência com tamanho pelo menos 2. O tamanho da sequência encontrada deverá ser máximo, se ela existir. Caso exista, seu programa deve imprimir o valor do ı́ndice i e do tamanho máximo da sequência m, nesta ordem, onde i é a primeira ocorrência da sequência que possui uma cópia na sequência original e m é o tamanho desta sequência que se repete. Caso contrário seu programa deve imprimir "nenhuma".

Os casos de teste não conterão entradas com mais de uma subsequência igual.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|8<br>7 9 5 4 5 5 4 6|3 2|
|12<br>2 7 9 5 2 5 4 8 6 2 5 4|5 3|

* <b>Sugestão</b>: Use como base para sua implementação a seguinte estrutura inicial de programa, que contém o programa principal e algumas funções e procedimentos que visam facilitar o seu trabalho. Evidentemente você pode ignorar esta sugestão. Caso aceite, você deve implementar as funções e procedimentos, o programa principal não deveria ter que ser alterado, a princı́pio. Você pode também decidir usar mais funções e procedimentos caso perceba que seu programa ficará mais legı́vel.
```Pascal
program escolha_um_nome_bom;

const MAX = 100;

type vetor = array [1..MAX] of longint;

var
    v : vetor;
    n, pos, tamanho_subsequencia: longint;

procedure ler_vetor (var v: vetor; n: longint);
(* procedure para ler um vetor "v" de "n" inteiros *)

function tem_subsequencia_iguais (var v: vetor; n, tam_seg: longint): longint;
(*
recebe uma subsequencia "v" que em tamanho "n" e procura por subsequencias
iguais de tamanho "tam_seg". A funcao devolve zero se nao encontrou
subsequencias iguais ou devolve a posicao do inicio da primeira subsequencia
que encontrou.
*)

(* programa principal *)
begin
    read (n);
    // tamanho da subsequencia a ser lido
    ler_vetor (v,n); 
    pos:= 0;
    tamanho_subsequencia:= n div 2; // inicia com maior valor possivel
    while (pos = 0) and (tamanho_subsequencia >= 2) do
    begin
         pos:= tem_subsequencia_iguais (v,n,tamanho_subsequencia);
         tamanho_subsequencia:= tamanho_subsequencia - 1;
    end;
    if pos > 0 then
        writeln (pos,’ ’,tamanho_subsequencia+1)
    else
        writeln ('nenhuma');
end.
```
#### (4) Substituição
É comum em editores de texto que você deseje substituir um pedaço do texto por outro pedaço, normalmente uma palavra por outra. Este problema simula esta situação com números, para facilitar.

Escreva um programa em Free Pascal que leia três sequências de números inteiros terminadas em zero (os zeros não devem ser processados). Imagine que a primeira sequência é o texto completo, a segunda é a palavra que você deseja substituir pela terceira. Considere que o usuário nunca vai digitar mais do que 100 números antes de cada zero. A entrada de dados garante que a segunda sequência tem no máximo tantos elementos quanto a primeira. Seu programa deve determinar se a primeira ocorrência da segunda sequência está contida na primeira e em caso afirmativo, deve substituı́-la pela terceira sequência. Ao final, seu programa deve imprimir a primeira sequência após a substituição, caso tenha havido alguma. Caso contrário seu programa deve imprimir "vazia".

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3 0<br>6 7 8 8 9 0<br>1 1 1 1 1 1 1 0|3 4 5 5 1 1 1 1 1 1 1 10 5 5 5 7 7 3|
|3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3 0<br>1 2 3 4 0<br>1 1 1 1 1 1 1 0|3 4 5 5 6 7 8 8 9 10 5 5 5 7 7 3|

* <b>Observação</b>: Caso queira, você pode usar o seguinte programa principal. A função ocorre retorna true se o vetor v2 que tem tamanho tv2 ocorre no vetor v1 que tem tamanho tv1. Se ele ocorre, então pos_ini é o ı́ndice do inı́cio desta ocorrência e pos fim é o final dela. Você pode adaptar isso se achar melhor. Se aceitar a sugestão, implemente esta função e esta procedure e se precisar faça outras que te ajudem.
```Pascal
begin
    ler_vetor (v1,tv1);
    ler_vetor (v2,tv2);
    ler_vetor (v3,tv3);
    if ocorre (v2, tv2, v1, tv1, pos_ini, pos_fim) then
        substitui (v3, tv3, v1, tv1, pos_ini, pos_fim);
    imprime_vetor (v1,tv1);
end.
```
