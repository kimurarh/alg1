program p2017_1;

const MAX = 200;
type tpMatriz = array [1..MAX, 1..MAX] of integer;
var M: tpMatriz;
    N, tam, i, j: integer;
    achou: boolean;

function seg_lin_igual(var M: tpMatriz; N: integer;
                         lin, colIni, colFim, num: integer): boolean;
(* Returna TRUE se todos os elementos do segmento de linha sao iguais a NUM *)
var j: integer; verifica: boolean;
begin
    verifica := true;

    j := colIni;
    while (j <= colFim) and verifica do
    begin
        if M[lin, j] <> num then
            verifica := false;
        j := j + 1;
    end;
    seg_lin_igual := verifica;
end;

function seg_col_igual(var M: tpMatriz; N: integer;
                          col, linIni, linFim, num: integer): boolean;
(* Returna TRUE se todos os elementos do segmento de coluna sao iguais a NUM *)
var i: integer; verifica: boolean;
begin
    verifica := true;

    i := linIni;
    while (i <= linFim) and verifica do
    begin
        if M[i, col] <> num then
            verifica := false;
        i := i + 1;
    end;
    seg_col_igual := verifica;
end;

function achar_borda_quadrada(var M: tpMatriz; N: integer;
                              linIni, colIni, tam: integer): boolean;
(* Retorna TRUE se todos os elementos da borda sao iguais *)
var linFim, colFim, num: integer;
begin
    linFim := linIni + tam - 1;
    colFim := colIni + tam - 1;

    if (linFim > N) or (colFim > N) then
        achar_borda_quadrada := false
    else
    begin
        (* Verifica se todos os elementos das linhas e colunas que formam a borda sao iguais *)
        num := M[colIni, colFim];
        if seg_lin_igual(M, N, linIni, colIni, colFim, num) and
           seg_lin_igual(M, N, linFim, colIni, colFim, num) and
           seg_col_igual(M, N, colIni, linIni, linFim, num) and
           seg_col_igual(M, N, colFim, linIni, linFim, num) then
               achar_borda_quadrada := true
       else
            achar_borda_quadrada := false;
    end;
end;

procedure remover_cor(var M: tpMatriz; N, num: integer);
var i, j: integer;
begin
    for i := 1 to N do
        for j := 1 to N do
            if M[i, j] = num then
                M[i, j] := 0;
end;

procedure ler_matriz(var M: tpMatriz; N: integer);
var i, j: integer;
begin
    for i := 1 to N do
        for j := 1 to N do
            read(M[i, j]);
end;

procedure imprimir_matriz(var M: tpMatriz; N: integer);
var i, j: integer;
begin
    for i := 1 to N do
    begin
        for j := 1 to N do
            write(M[i, j], ' ');
        writeln;
    end;
end;

begin
    read(N);
    ler_matriz(M, N);

    (* procura borda na coordenada [1, 1] *)
    achou := false;
    tam := 2;
    while (tam <= N) and not achou do
    begin
        writeln('tam = ', tam);
        if achar_borda_quadrada(M, N, 1, 1, tam) then
            achou := true;
        tam := tam + 1;
    end;

    if achou then
        remover_cor(M, N, M[1, 1]);

    (* Procura borda de tamanho 3 *)
    achou := false;
    i := 1;
    while (i <= N - 2) and not achou do
    begin
        j := 1;
        while (j <= N - 2) and not achou do
        begin
            if achar_borda_quadrada(M, N, i, j, 3) then
                achou := true;
            j := j + 1;
        end;
        i := i + 1;
    end;

    if achou then
        remover_cor(M, N, M[i, j]);

    imprimir_matriz(M, N);
end.
