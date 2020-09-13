program quadrado_magico_2;

const MAX = 200;
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

function eh_quadrado_magico(var mat: matriz; n, lin_ini, col_ini, tam: longint): boolean;
var i, j, lin_fim, col_fim, somaInicial, somaDiag, somaLinha, somaColuna: longint; verifica: boolean;
begin
    lin_fim := lin_ini + tam - 1;
    col_fim := col_ini + tam - 1;

    (* calcula a soma da diagonal principal *)
    somaInicial := 0;
    i := lin_ini;
    j := col_ini;
    while i <= lin_fim do
    begin
        somaInicial := somaInicial + mat[i, j];
        i := i + 1;
        j := j + 1;
    end;

    (* calcula a soma da diagonal secundaria *)
    somaDiag := 0;
    j := col_ini;
    for i := lin_fim downto lin_ini do
    begin
        somaDiag := somaDiag + mat[i, j];
        j := j + 1;
    end;

    if somaDiag <> somaInicial then
        eh_quadrado_magico := false
    else
        begin
        (* compara com a soma das linhas e colunas *)
        verifica := true;
        i := lin_ini;
        while (i <= lin_fim) and verifica do
        begin
            somaLinha := 0;
            somaColuna := 0;
            for j := col_ini to col_fim do
            begin
                somaLinha := somaLinha + mat[i, j];
                somaColuna := somaColuna + mat[j, i];
            end;
            if (somaLinha <> somaInicial) or (somaColuna <> somaInicial) then
                verifica := false;
            i := i + 1;
        end;

        eh_quadrado_magico := verifica;
    end;
end;

procedure prox_posicao(var lin_ini, col_ini: longint; n, tam: longint);
begin
    if col_ini = n - tam + 1 then
    begin
        col_ini := 1;
        lin_ini := lin_ini + 1;
    end
    else
        col_ini := col_ini + 1
end;

function conta_quadrados_magicos(var mat: matriz; n: longint): longint;
var cont, tam, lin_ini, col_ini, pos_fim: longint;
begin
    cont := 0;
    for tam := 2 to n do
    begin
        lin_ini := 1;
        col_ini := 0;
        pos_fim := n - tam + 1;
        while (lin_ini <> pos_fim) or (col_ini <> pos_fim) do
        begin
            prox_posicao(lin_ini, col_ini, n, tam);
            if eh_quadrado_magico(mat, n, lin_ini, col_ini, tam) then
                cont := cont + 1;
        end;
    end;

    conta_quadrados_magicos := cont;
end;

begin
    read(n);
    le_matriz_quadrada(mat, n);
    writeln(conta_quadrados_magicos(mat, n));
end
