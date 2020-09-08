program repeticao_em_matriz;

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

function busca(elem: longint; var mat: matriz;
               n, m, lin_ini, col_ini: longint): boolean;
var i, j: longint;
    achou: boolean;
begin
    achou := false;
    i := lin_ini;
    j := col_ini;
    while (i <= n) and not achou do
    begin
        while (j <= m) and not achou do
        begin
            if mat[i, j] = elem then
                achou := true;
            j := j + 1;
        end;
        i := i + 1;
        j := 1;
    end;
    
    busca := achou;
end;

procedure prox_posicao(lin, col, n, m: longint; var prox_l, prox_c: longint);
begin
    if col = n then
    begin
        prox_l := lin + 1;
        prox_c := 1;
    end
    else
    begin
        prox_l := lin;
        prox_c := col + 1;
    end;
end;

function tem_repetidos(var mat: matriz; n, m: longint): boolean;
var i, j, prox_l, prox_c: longint;
    repetiu: boolean;
begin
    repetiu := false;
    i := 1;
    while (i <= n) and not repetiu do
    begin
        j := 1;
        while (j <= m) and not repetiu do
        begin
            prox_posicao(i, j, n, m, prox_l, prox_c);
            repetiu := busca(mat[i, j], mat, n, m, prox_l, prox_c);
            j := j + 1;
        end;
        i := i + 1;
    end;

    tem_repetidos := repetiu;
end;

begin
    read(n, m);
    le_matriz(mat, n, m);
    if tem_repetidos(mat, n, m) then
        writeln('sim')
    else
        writeln('nao');
end.
