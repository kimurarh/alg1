program p2013_1;

const MAX = 600;
type matriz = array [1..MAX, 1..MAX] of longint;
     vetor = array [1..MAX*MAX] of longint;
var mat: matriz;
    m, n: longint;

procedure le_matriz(var mat: matriz; m, n: longint);
var i, j: longint;
begin
    for i := 1 to m do
        for j := 1 to n do
            read(mat[i, j]);
end;

function eh_crescente(var vet: vetor; tam: longint): boolean;
(* Retorna TRUE se o vetor esta ordenado em ordem crescente e FALSE caso contrario *)
var i: longint; verifica: boolean;
begin
    verifica := true;
    
    i := 1;
    while (i < tam) and verifica do
    begin
        if vet[i] >= vet[i+1] then
            verifica := false;
        i := i + 1;
    end;

    eh_crescente := verifica;
end;

procedure gera_vetor(var vet: vetor; var tam: longint; var mat: matriz; 
                     m, n, n_lin, n_col, lin_ini, col_ini: longint);
(* 
    Gera um vetor VET a partir de uma submatriz da matriz MAT 
    Essa submatriz tem dimensoes N_LIN e N_COL, e inicia na posicao LIN_INI e COL_INI da matriz MAT
*)
var i, j, lin_fim, col_fim: longint;
begin
    lin_fim := lin_ini + n_lin - 1;
    col_fim := col_ini + n_col - 1;

    if (lin_fim <= m) and (col_fim <= n) then
    begin
        tam := 0;
        for i := lin_ini to lin_fim do
            for j := col_ini to col_fim do
            begin
                tam := tam + 1;
                vet[tam] := mat[i, j];
            end;
    end;
end;

function maior_seq_crescente(var mat: matriz; m, n: longint): longint;
var maior, n_lin, n_col, i, j, tam: longint; vet: vetor;
begin
    maior := 1;

    for n_lin := 1 to m do
        for n_col := 1 to n do
            for i := 1 to m do
                for j := 1 to n do
                begin
                    gera_vetor(vet, tam, mat, m, n, n_lin, n_col, i, j);
                    if (eh_crescente(vet, tam)) and (tam > maior) then
                        maior := tam;
                end;

    maior_seq_crescente := maior;
end;

begin
    read(m, n);
    while (m <> 0) or (n <> 0) do
    begin
        le_matriz(mat, m, n) ;   
        writeln(maior_seq_crescente(mat, m, n));
        read(m, n);
    end;
end.
