program elementos_nulos;

const MAX_L = 100; MAX_C = 100;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    n, m: longint;

procedure le_matriz(var mat: matriz; var n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure conta_nulos(var mat: matriz; n, m: longint);
var i, j, cont_l, cont_c: longint; eh_nulo: boolean;
begin
    cont_l := 0;
    cont_c := 0;

    (* conta linhas nulas *)
    eh_nulo := true;
    i := 1;
    while (i <= n) and eh_nulo do
    begin
        j := 1;
        while (j <= m) and eh_nulo do
        begin
            if mat[i, j] <> 0 then
                eh_nulo := false;
            j := j + 1;
        end;
        if eh_nulo then
            cont_l := cont_l + 1;
        eh_nulo := true;
        i := i + 1;
    end;

    (* conta colunas nulas *)
    eh_nulo := true;
    i := 1;
    while (i <= n) and eh_nulo do
    begin
        j := 1;
        while (j <= m) and eh_nulo do
        begin
            if mat[j, i] <> 0 then
                eh_nulo := false;
            j := j + 1;
        end;
        if eh_nulo then
            cont_c := cont_c + 1;
        eh_nulo := true;
        i := i + 1;
    end;

    writeln('linhas: ', cont_l);
    writeln('colunas: ', cont_c);
end;

begin
    read(n, m);
    le_matriz(mat, n, m);
    conta_nulos(mat, n, m);
end.
