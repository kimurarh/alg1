program ex01;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    n: longint;

procedure le_matriz(var mat: matriz; lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(mat[i, j]);
end;

procedure imprime_matriz(var mat: matriz; lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
    begin
        for j := 1 to col do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function data_mais_recente(var mat: matriz; lin, col, data1, data2: longint): boolean;
begin
    data_mais_recente := false;
    if mat[data1, 3] < mat[data2, 3] then
        data_mais_recente := true
    else if mat[data1, 3] = mat[data2, 3] then
    begin
        if mat[data1, 2] < mat[data2, 2] then
            data_mais_recente := true
        else if (mat[data1, 2] = mat[data2, 2]) and (mat[data1, 1] < mat[data2, 1]) then
            data_mais_recente := true;
    end;
end;

procedure ordena_matriz(var mat: matriz; lin, col: longint);
var i, j, k, temp, pos_menor: longint;
begin
    for i := 1 to lin-1 do
    begin
        (* acha o i-esimo menor, a partir da posicao i + 1 *)
        pos_menor := i;
        for j := i + 1 to lin do
            if data_mais_recente(mat, lin, col, j, pos_menor) then
                pos_menor := j;
        
        (* troca de lugar com o menor *)
        for k := 1 to 3 do
        begin
            temp := mat[i, k];
            mat[i, k] := mat[pos_menor, k];
            mat[pos_menor, k] := temp;
        end;
    end;
end;

begin
    read(n);
    le_matriz(mat, n, 3);
    ordena_matriz(mat, n, 3);
    imprime_matriz(mat, n, 3);
end.
