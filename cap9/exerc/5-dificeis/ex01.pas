program ex01;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
    n: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

function vetores_iguais(var v, w: vetor; n: longint): boolean;
var i: longint;
begin
    (* sentinelas *)
    v[n+1] := 1;
    v[n+1] := 2;
    
    i := 1;
    while v[i] = w[i] do
        i := i + 1;

    vetores_iguais := false;
    if i > n then
        vetores_iguais := true
end;

begin
    read(n);
    le_vetor(v, n);
    le_vetor(w, n);
    if vetores_iguais(v, w, n) then
        writeln('sim')
    else
        writeln('nao');
end.
