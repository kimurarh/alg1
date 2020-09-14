program ex04;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;
     vetor = array [1..MAX] of longint;
var mat: matriz;
    n, k: longint;
    vet: vetor;

procedure le_matriz(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

function calcula_custo_total(var mat: matriz; n: longint;
                             var vet: vetor; k: longint): longint;
var i, custo: longint;
begin
    custo := 0;
    for i := 1 to k-1 do
        custo := custo + mat[vet[i], vet[i+1]];

    calcula_custo_total := custo;
end;

begin
    read(n);
    le_matriz(mat, n);
    read(k);
    le_vetor(vet, k);
    writeln(calcula_custo_total(mat, n, vet, k));
end.
