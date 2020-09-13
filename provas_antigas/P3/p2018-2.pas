program p2018_2;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;
var mat, res: matriz;
    n, m, passo: longint;

procedure le_matriz(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

procedure imprime_matriz(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to n do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function maior_elem(var mat: matriz; i, j: longint): longint;
var maior: longint;
begin
    maior := mat[i, j];

    if mat[i-1, j-1] > maior then
       maior := mat[i-1, j-1];
    if mat[i-1, j] > maior then
        maior := mat[i-1, j];
    if mat[i, j-1] > maior then
        maior := mat[i, j-1];

    maior_elem := maior;
end;

procedure maxpooling(var mat: matriz; n: longint;
                     var res: matriz; var m: longint);
var i, j: longint;
begin
    i := 2;
    while i <= n do
    begin
        j := 2;
        while j <= n do
        begin
            if passo = 1 then
                res[i-1, j-1] := maior_elem(mat, i, j)
            else (* passo = 2 *)
                res[i div 2, j div 2] := maior_elem(mat, i, j);
            j := j + passo;
        end;
        i := i + passo;
    end;

    m := n - passo;
end;

begin
    read(n);
    read(passo);
    le_matriz(mat, n);
    maxpooling(mat, n, res, m);
    imprime_matriz(res, m);
end.
