program ex02;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
     vetor = array [1..MAX_L] of longint;
var mat: matriz;
    vet: vetor;
    n, m, p, lin, col: longint;

procedure le_matriz(var mat: matriz; n, m: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to m do
            read(mat[i, j]);
end;

procedure le_vetor(var vet: vetor; p: longint);
var i: longint;
begin
    for i := 1 to p do
        read(vet[i]);
end;

function acha_esq_dir(var mat: matriz; n, m: longint;
                      var vet: vetor; p, lin, col: longint): boolean;
var i: longint; achou: boolean;
begin
    achou := true;

    i := 0;
    while (i < p) and achou do
    begin
        if mat[lin, col + i] <> vet[i + 1] then
            achou := false;
        i := i + 1;
    end;

    acha_esq_dir := achou;
end;

function acha_dir_esq(var mat: matriz; n, m: longint;
                      var vet: vetor; p, lin, col: longint): boolean;
var i: longint; achou: boolean;
begin
    achou := true;

    i := 0;
    while (i < p) and achou do
    begin
        if mat[lin, col - i] <> vet[i + 1] then
            achou := false;
        i := i + 1;
    end;

    acha_dir_esq := achou;
end;

function acha_cima_baixo(var mat: matriz; n, m: longint;
                      var vet: vetor; p, lin, col: longint): boolean;
var i: longint; achou: boolean;
begin
    achou := true;

    i := 0;
    while (i < p) and achou do
    begin
        if mat[lin + i, col] <> vet[i + 1] then
            achou := false;
        i := i + 1;
    end;

    acha_cima_baixo := achou;
end;

function acha_baixo_cima(var mat: matriz; n, m: longint;
                      var vet: vetor; p, lin, col: longint): boolean;
var i: longint; achou: boolean;
begin
    achou := true;

    i := 0;
    while (i < p) and achou do
    begin
        if mat[lin - i, col] <> vet[i + 1] then
            achou := false;
        i := i + 1;
    end;

    acha_baixo_cima := achou;
end;

begin
    read(n, m); (* dimensoes da matriz *)
    le_matriz(mat, n, m);
    read(p);
    le_vetor(vet, p);
    read(lin, col);
    if acha_esq_dir(mat, n, m, vet, p, lin, col) or acha_dir_esq(mat, n, m, vet, p, lin, col) or
       acha_cima_baixo(mat, n, m, vet, p, lin, col) or acha_baixo_cima(mat, n, m, vet, p, lin, col) then
        writeln('sim')
    else
        writeln('nao');
end.
