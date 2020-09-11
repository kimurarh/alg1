program ex01;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat1, mat2: matriz;
    n, m: longint;

procedure ler_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure imprimir_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to m do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function soma_vizinhos(lin, col: longint; var mat: matriz; n, m: longint): longint;
var soma: longint;
begin
    soma := 0;
    
    if (lin <> 1) and (lin <> n) and (col <> 1) and (col <> m) then
        soma := mat[lin-1, col-1] + mat[lin, col-1] + mat[lin+1, col-1] +
                mat[lin-1, col] + mat[lin+1, col] +
                mat[lin-1, col+1] + mat[lin, col+1] + mat[lin+1, col+1]
    else
    begin
        if lin = 1 then
        begin
            if col = 1 then
                soma := mat[lin+1, col] + mat[lin+1, col+1] + mat[lin, col+1]
            else if col = m then
                soma := mat[lin+1, col] + mat[lin+1, col-1] + mat[lin, col-1]
            else
                soma := mat[lin, col-1] + mat[lin, col+1] + mat[lin+1, col-1] + mat[lin+1, col] + mat[lin+1, col+1];
        end
        else if lin = n then
        begin
            if col = 1 then
                soma := mat[lin-1, col] + mat[lin-1, col+1] + mat[lin, col+1]
            else if col = m then
                soma := mat[lin-1, col] + mat[lin-1, col-1] + mat[lin, col-1]
            else
                soma := mat[lin, col-1] + mat[lin, col+1] + mat[lin-1, col-1] + mat[lin-1, col] + mat[lin-1, col+1];
        end
        else
        begin
            if col = 1 then
                soma := mat[lin-1, col] + mat[lin-1, col+1] + mat[lin, col+1] + mat[lin+1, col] + mat[lin+1, col+1]
            else
                soma := mat[lin-1, col] + mat[lin-1, col-1] + mat[lin, col-1] + mat[lin+1, col] + mat[lin+1, col-1]
        end;
    end;

    soma_vizinhos := soma;
end;

procedure gerar_matriz(var mat1: matriz; n, m: longint; var mat2: matriz);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            mat2[i, j] := soma_vizinhos(i, j, mat1, n, m);
end;

begin
    read(n, m);
    ler_matriz(mat1, n, m);
    gerar_matriz(mat1, n, m, mat2);
    imprimir_matriz(mat2, n, m);
end.
