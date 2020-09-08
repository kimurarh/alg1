program quadrado_magico_1;

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

function eh_quadrado_magico(var mat: matriz; n: longint): boolean;
var i, j, somaInicial, somaDiag, somaLinha, somaColuna: longint; verifica: boolean;
begin
    (* calcula a soma da diagonal principal *)
    somaInicial := 0;
    for i := 1 to n do
        somaInicial := somaInicial + mat[i, i];

    (* calcula a soma da diagonal secundaria *)
    somaDiag := 0;
    for i := n downto 1 do
        somaDiag := somaDiag + mat[i, n - i + 1];

    if somaDiag <> somaInicial then
        eh_quadrado_magico := false
    else
        begin
        (* compara com a soma das linhas e colunas *)
        verifica := true;
        i := 1;
        while (i <= n) and verifica do
        begin
            somaLinha := 0;
            somaColuna := 0;
            for j := 1 to n do
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

begin
    read(n);
    le_matriz_quadrada(mat, n);
    if eh_quadrado_magico(mat, n) then
        writeln('sim')
    else
        writeln('nao');
end.
