## Lista 6

* [Funções](#Funções)

### Funções

#### (0) Funções 002
Faça uma função que receba como parâmetro um número inteiro e teste se ele é um número binário. Se ele for binário, imprima sim senão imprima nao. Teste sua função usando este código:

```Pascal
program testa_binario;
var n: longint;

(* coloque aqui o codigo da sua funcao que testa se eh binario *)

begin
    read (n);
    if eh_binario (n) then
        writeln ('sim')
    else
        writeln ('nao');
end.
```

```
Exemplos de entradas
10001
1020

Saídas esperadas
sim
nao
```

#### (1) Funções 003
Faça uma função que receba como parâmetro um número inteiro garantidamente binário e o converta para decimal. Teste sua função usando este código:

```Pascal
program converte;
var n: longint;

(* coloque aqui o codigo da sua funcao que converte para decimal *)

begin
    read (n);
    writeln (converte_em_decimal (n));
end.
```

```
Exemplos de entradas
10001
1010

Saídas esperadas
17
10
```

#### (2) Funções 004
Faça uma função que receba como parâmetro um número inteiro e retorne true se ele for primo e false em caso contrário. Teste sua função usando o código abaixo, que imprime todos os primos entre 1 e 10000.

```Pascal
program testa_se_primo;
var i: longint;

(* coloque aqui o codigo da sua funcao que testa se eh primo *)

begin
    for i:= 1 to 10000 do
        if eh_primo (i) then
            writeln (i);
end.
```

#### (3) Funções 006
Faça uma função que receba como parâmetros seis inteiros dia1, mes1, ano1, dia2, mes2, ano2 , todas do tipo integer. Considerando que cada trinca de dia, mês e ano representa uma data, a função deve retornar true se a primeira data for anterior à segunda e false caso contrário. Teste sua função usando o código abaixo.

```Pascal
program compara datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

(* coloque aqui o codigo da sua funcao que compara as datas *)

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.
```

#### (4) Funções 007
Faça uma procedure que receba como parâmetro um inteiro e retorne este número incrementado de uma unidade. Use esta procedure para fazer funcionar o código abaixo, que imprime todos os números de 1 a 10.
Teste sua procedure usando o código abaixo.

```Pascal
program incrementa uma unidade;
var n: longint;

(* coloque aqui o codigo da sua procedure que incrementa uma unidade *)

begin
    n:= 1;
    while n <= 10 do
    begin
        writeln (n);
        incrementa (n);
    end;
end.
```

#### (5) Funções 008
Faça um programa que receba os valores antigo e atual de um produto. Use uma função que determine o percentual de acréscimo entre esses valores. O resultado deverá ser mostrado pelo programa principal.

```
Exemplos de entradas
10 15
100 110
134 134

Saídas esperadas
0.50
0.10
0.00
```


```Pascal
program calcula_percentual;
var antigo, atual: real;

(* coloque aqui o codigo da sua funcao *)

begin
    read (antigo, atual);
    while (antigo <> 0) or (atual <> 0) do
    begin
        writeln (aumento_percentual (antigo, atual):0:2);
        read (antigo, atual);
    end;
end.
```

#### (6) Funções 001
Faça uma função que receba como parâmetros dois números inteiros não nulos e retorne true se um for o contrário do outro e false em caso contrário. Teste sua função usando este código:

```Pascal
program contrario;
var n,m: longint;

(* coloque aqui o codigo da sua funcao *)

begin
read (n,m);
if contrario (n,m) then
writeln (n,' eh o contrario de ',m)
else
writeln (n,' nao eh o contrario de ',m);
end.
```

```
Exemplos de entradas
123 321
123 231

Saídas esperadas
123 eh o contrario de 321
123 nao eh o contrario de 231
```

#### (7) Funções 005
Faça duas funções para calcular o seno e o cosseno de um número real lido do teclado representando um ângulo em radianos. Calcule até o sétimo termo das séries. Faça uma terceira função que calcule a tangente deste mesmo ângulo lido. Esta função deve retornar true caso a tangente exista e false em caso contrário. Ao mesmo tempo, a função tangente deve retornar o valor da tangente do ângulo caso ele exista, senão deve imprimir uma mensagem adequada. Teste suas funções usando o código abaixo:

```Pascal
program calcula_tangente;
var angulo: real;

(* coloque aqui o codigo da sua funcao que calcula o seno *)

(* coloque aqui o codigo da sua funcao que calcula o cosseno *)

(* coloque aqui o codigo da sua funcao que calcula a tangente *)

begin
    read (angulo);
    if existe_tangente(angulo, tg) then
        writeln (tg:0:5)
    else
        writeln ('nao existe tangente de ',angulo:0:5);
end.
```

#### (8) Funções 009
Faça uma função que calcule a média ponderada com pesos respectivamente 1, 2 e 3 para as provas 1, 2 e 3. Faça também outra função que decida se um aluno foi aprovado ou reprovado, sabendo que a aprovação deve ter a média final maior ou igual a 50. As notas das provas e a média são valores inteiros entre zero e 100. Você pode testar sua procedure usando o código abaixo:

```
Exemplo de entrada
3

100 40 5
5 40 100
50 50 50

Saída esperada
aluno 1 reprovado com media: 32
aluno 2 aprovado com media: 64
aluno 3 aprovado com media: 50
```

```Pascal
program media_alunos;
var i, n, p1, p2, p3, media: longint;

(* coloque aqui o codigo da sua funcao que calcula media ponderada *)

(* coloque aqui o codigo da funcao que decide pela aprovacao/reprovacao *)

begin
    read (n);
    for i:= 1 to n do
    begin
        read (p1, p2, p3);
        media:= media_ponderada (p1, p2, p3);
        if aprovado (media) then
            writeln ('aluno ',i,' aprovado com media: ', media)
        else
            writeln ('aluno ',i,' reprovado com media: ', media);
    end;
end.
```
