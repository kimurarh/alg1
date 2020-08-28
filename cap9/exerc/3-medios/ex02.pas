program ex02;

const MAX = 200;
type vetor = array [1..MAX] of real;
var v: vetor;
    tam: longint;

procedure ler_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

function soma_max(var v: vetor; tam: longint): real;
var i: longint; soma, maior_soma: real;
begin
    soma := v[1];
    maior_soma := soma;

    for i:= 2 to tam do
    begin
        if soma < 0 then
            soma := v[i]
        else
            soma := soma + v[i];

        if soma > maior_soma then
            maior_soma := soma;
    end; 
    soma_max := maior_soma;
end;

begin
    read(tam);
    ler_vetor(v, tam);
    writeln(soma_max(v, tam):0:2);
end.
