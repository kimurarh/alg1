program p2019_1;

const MAX = 100;
type vetor = array [1..MAX] of int64;
var v, s: vetor;
    tam, i, ts: int64;

procedure le_seq_num(var v: vetor; var tam: int64);
var num: int64;
begin
    tam := 0;
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

function dig_ver(dig: longint; var v: vetor; tam: longint): longint;
var i, soma, mult, resto: longint;
begin
    if dig = 1 then
        i := 3
    else
        i := 2;

    soma := 0;
    mult := 2;
    while i <= tam do
    begin
        soma := soma + v[i] * mult;
        mult := mult + 1;
        i := i + 1;
    end;

    resto := soma mod 11;
    if resto < 2 then
        dig_ver := 0
    else
        dig_ver := 11 - resto;
end;

function converte_num_vetor(num: int64; var v: vetor): longint;
var tam: longint;
begin
    tam := 0;
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num mod 10;
        num := num div 10;
    end;
    converte_num_vetor := tam;
end;

begin
    le_seq_num(s, ts);
    for i := 1 to ts do
    begin
        write(s[i], ' ');
        tam := converte_num_vetor(s[i], v);
        (* verifica digitos verificadores *)
        if (dig_ver(1, v, tam) = v[2]) and (dig_ver(2, v, tam) = v[1]) then
            writeln('valido')
        else
            writeln('invalido');
    end;
end.
