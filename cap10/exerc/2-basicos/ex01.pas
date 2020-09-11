program ex01;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    n, m: longint;

procedure le_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure conta_nulos(var mat: matriz; n, m: longint);
var i, j, lin_nul, col_nul, cont_lin, cont_col: longint;
begin
    lin_nul := 0;
    col_nul := 0;

    for i := 1 to n do
    begin
        cont_lin := 0;
        cont_col := 0;

        for j := 1 to m do
        begin
            (* conta elementos nulos na linha i *)
            if mat[i, j] = 0 then
                cont_lin := cont_lin + 1;
            (* conta elementos nulos na coluna j *)
            if mat[j, i] = 0 then
                cont_col := cont_col + 1;
        end;
        
        if cont_lin = m then
            lin_nul := lin_nul + 1;

        if cont_col = n then
            col_nul := col_nul + 1; 
    end;

    writeln(lin_nul, ' ', col_nul);
end;


begin
    writeln('Digite as dimensoes da matriz');
    read(n, m);
    writeln('Digite os elementos da matriz');
    le_matriz(mat, n, m);
    conta_nulos(mat, n, m);
end.
