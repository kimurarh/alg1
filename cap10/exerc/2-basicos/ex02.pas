program ex02;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of real;
     vetor = array [1..MAX] of real;
var mat: matriz;
    x, y: vetor;
    n: longint;

procedure le_matriz(var mat: matriz; tam: longint);
var i, j: longint;
begin
    for i := 1 to tam do
        for j := 1 to tam do
            read(mat[i, j]);
end;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

function eh_solucao(var x: vetor; var mat: matriz; var y: vetor; n: longint): boolean;
var i, j: longint; calculo: real; verifica: boolean;
begin
    verifica := true;
    i := 1;
    while (i <= n) and verifica do
    begin
        calculo := 0;
        for j := 1 to n do
            calculo := calculo + mat[i, j] * x[j];

        if calculo <> y[i] then
            verifica := false;
        i := i + 1;
    end;
    
    eh_solucao := verifica;
end;

begin
    read(n);
    le_matriz(mat, n);
    le_vetor(y, n);
    le_vetor(x, n);
    if eh_solucao(x, mat, y, n) then
        writeln('sim')
    else
        writeln('nao');
end.
