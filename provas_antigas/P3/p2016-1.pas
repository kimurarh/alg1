program p2016_1;

const MAX_L = 100; MAX_C = 100;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    k, n, m: longint;

procedure le_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure imprime_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
    begin
        for j := 1 to m do
            write(mat[i, j], ' ');
        writeln;
    end;
end;

function sem_vizinhos(lin, col: longint; var mat: matriz; n, m: longint): boolean;
var soma: longint;
begin
    soma := 0;
    if (lin <> n) and (lin <> 1) and (col <> m) and (col <> 1) then
        soma := mat[lin-1, col] + mat[lin, col+1] + mat[lin+1, col] + mat[lin, col-1] + 
        mat[lin-1, col-1] + mat[lin-1, col+1] + mat[lin+1, col-1] + mat[lin+1, col+1]
    else
    begin
        if lin = 1 then
        begin
            if col = 1 then
                soma := mat[lin, col+1] + mat[lin+1, col] + mat[lin+1, col+1]
            else if col = m then
                soma := mat[lin, col-1] + mat[lin+1, col] + mat[lin+1, col-1]
            else
                soma := mat[lin, col-1] + mat[lin, col+1] + mat[lin+1, col] + 
                mat[lin+1, col+1] + mat[lin+1, col-1];
        end
        else if lin = n then
        begin
            if col = 1 then
                soma := mat[lin, col+1] + mat[lin-1, col] + mat[lin-1, col+1]
            else if col = m then
                soma := mat[lin, col-1] + mat[lin-1, col] + mat[lin-1, col-1]
            else
                soma := mat[lin, col-1] + mat[lin, col+1] + mat[lin-1, col] +
                mat[lin-1, col+1] + mat[lin-1, col-1];
        end
        else
        begin
            if col = 1 then
                soma := mat[lin-1, col] + mat[lin+1, col] + mat[lin, col+1] +
                mat[lin-1, col+1] + mat[lin+1, col+1]
            else if col = m then
                soma := mat[lin-1, col] + mat[lin+1, col] + mat[lin, col-1] + 
                mat[lin-1, col-1] + mat[lin+1, col-1];
        end;
    end;

    if soma = 0 then
        sem_vizinhos := true
    else
        sem_vizinhos := false;
end;

function verifica_disparos(k: longint; var mat: matriz; n, m: longint): longint;
var i, lin, col, acertos: longint;
begin
    acertos := 0;
    for i := 1 to k do
    begin
        read(lin, col);
        if mat[lin, col] = 1 then
        begin
            mat[lin, col] := 0;
            if sem_vizinhos(lin, col, mat, n, m) then
                acertos := acertos + 1;
        end;
    end;

    verifica_disparos := acertos;
end;

begin
    read(n, m); (* dimensoes do tabuleiro *)
    le_matriz(mat, n, m);
    imprime_matriz(mat, n, m);
    read(k); (* numero de disparos feitos *)
    writeln('Navios destruidos:');
    writeln(verifica_disparos(k, mat, n, m));
end.
