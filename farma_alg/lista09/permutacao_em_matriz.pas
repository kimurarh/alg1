program permutacao_em_matriz;

const MAX = 100;
type matriz = array [1..MAX, 1..MAX] of longint;
var mat: matriz;
    n: longint;

procedure le_matriz_quadrada(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

function verifica_linhas(var mat: matriz; n: longint): boolean;
var i, j, cont_zero, cont_um: longint; verifica: boolean;
begin
    i := 1;
    verifica := true;
    while (i <= n) and verifica do
    begin
        j := 1;
        cont_um := 0;
        cont_zero := 0;
        while (j <= n) and verifica do
        begin
            if mat[i, j] = 1 then
                cont_um := cont_um + 1
            else if mat[i, j] = 0 then
                cont_zero := cont_zero + 1;
            j := j + 1;
        end;
        if (cont_zero <> n - 1) or (cont_um <> 1) then
            verifica := false;
        i := i + 1;
    end;
    verifica_linhas := verifica;
end;

function verifica_colunas(var mat: matriz; n: longint): boolean;
var i, j, cont_zero, cont_um: longint; verifica: boolean;
begin
    i := 1;
    verifica := true;
    while (i <= n) and verifica do
    begin
        j := 1;
        cont_um := 0;
        cont_zero := 0;
        while (j <= n) and verifica do
        begin
            if mat[j, i] = 1 then
                cont_um := cont_um + 1
            else if mat[j, i] = 0 then
                cont_zero := cont_zero + 1;
            j := j + 1;
        end;
        if (cont_zero <> n - 1) or (cont_um <> 1) then
            verifica := false;
        i := i + 1;
    end;
    verifica_colunas := verifica;
end;

function eh_permutacao(var mat: matriz; n: longint): boolean;
var verifica: boolean;
begin
    verifica := verifica_linhas(mat, n); (* verifica as linhas *)
    if verifica then
        verifica := verifica_colunas(mat, n); (* verifica as colunas *)
    eh_permutacao := verifica;
end;

begin
    read(n);
    le_matriz_quadrada(mat, n);
    if eh_permutacao(mat, n) then
        writeln('sim')
    else
        writeln('nao');
end.
