program ex13;

const MAX = 100;
type vetor = array [0..MAX] of real;
var cod, tam, indice: longint;
    v: vetor;
    num: real;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i]:0:1, ' ');
    writeln;
end;

procedure le_codigo(var cod: longint);
begin
    repeat
        read(cod);
    until (cod = 0) or (cod = 1) or (cod = 2);
end;

(* insere o numero no vetor ordenado *)
procedure add_num(num: real; var v: vetor; var tam: longint);
var i: longint;
begin
    v[0] := num; (* sentinela *)
    i := tam;
    while num < v[i] do
    begin
        v[i+1] := v[i];
        i := i - 1;
    end;
    v[i+1] := num;
    tam := tam + 1;
    imprime_vetor(v, tam);
end;

function acha_num(num: real; var v: vetor; tam: longint): longint;
var inicio, fim, meio: longint;
begin
    inicio := 1;
    fim := tam;
    meio := (inicio + fim) div 2;
    while (v[meio] <> num) and (inicio <= fim) do
    begin
        if v[meio] > num then
            fim := meio - 1
        else 
            inicio := meio + 1;
        meio := (inicio + fim) div 2;
    end;

    if inicio <= fim then
        acha_num := meio
    else
        acha_num := 0;
end;

procedure rm_num(indice: longint; var v: vetor; var tam: longint);
var i: longint;
begin
    for i := indice to tam - 1 do
        v[i] := v[i + 1];
    tam := tam - 1;
    imprime_vetor(v, tam);
end;

begin
    tam := 0;
    le_codigo(cod);
    while cod <> 0 do
    begin
        read(num);
        if cod = 1 then
            if tam = MAX then
                writeln('erro') (* quantidade maxima ultrapassada *)
            else
                add_num(num, v, tam)
        else
        begin
            indice := acha_num(num, v, tam);
            if indice = 0 then
                writeln('erro') (* numero nao existe *)
            else
                rm_num(indice, v, tam);
        end;
        le_codigo(cod);
    end;
    imprime_vetor(v, tam);
end.
