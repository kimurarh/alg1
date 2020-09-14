program p2018_1;

const MAX = 200;
type tpMatriz = array [1..MAX, 1..MAX] of integer;
var M: tpMatriz;
    N, tam, i, j: integer;
    achou: boolean;

function achar_X(var M: tpMatriz; N, linIni, colIni, tam: integer): boolean;
(* 
    Procura em uma matriz M de tamanho NxN por um conjunto de elementos cuja disposição forma visualmente um "X" constituido de números iguais
    Recebe a matriz, uma corrdenada (linIni e colIni) e um numero interio tam, que representa o tamanho do "X"
    A funcao retorna TRUE se os elementos contidos no X de tamanho tam, cujo canto superior esquerdo esta na corrdenada (linIni e colIni), possuem todos o mesmo valor, e retorna FALSE caso contrario.
*)
var linFim, colFim, num, i, j: integer; verifica: boolean;
begin
    linFim := linIni + tam - 1;
    colFim := colIni + tam - 1;

    if (linFim > N) or (colFim > N) then
        achar_X := false
    else
    begin
        verifica := true;
        num := M[linIni, colIni];
       
        (* verifica diagonal principal *) 
        i := linIni;
        j := colIni;
        while (i <= linFim) and verifica do
        begin
            if M[i, j] <> num then
                verifica := false;
            i := i + 1;
            j := j + 1;
        end;
        
        if verifica then
        begin
            (* verifica diagonal segundaria *)
            i := linIni;
            j := colFim;
            while (j >= colFim) and verifica do
            begin
                if M[i, j] <> num then
                    verifica := false;
                i := i + 1;
                j := j - 1;
            end;
        end;

        achar_X := verifica;
    end;
end;

function acha_maior(var M: tpMatriz; N: integer): integer;
(* Acha o maior elemento da matriz *)
var i, j, maior: integer;
begin
    maior := M[1, 1];

    for i := 1 to N do
        for j := 1 to N do
            if M[i, j] > maior then
                maior := M[i, j];
    acha_maior := maior;
end;

procedure inverte_cor(var M: tpMatriz; N: integer);
(* Recebe uma matriz M de tamanho NxN. A inversao de cor funciona ao obter o maior numero da matriz MAX e, para cada coordenada da matriz, subtrarir de max o valor da coordenada *)
var i, j, maior: integer;
begin
    maior := acha_maior(M, N);
    
    for i := 1 to N do
        for j := 1 to N do
            M[i, j] := maior - M[i, j];
end;

procedure ler_matriz(var M: tpMatriz; N: integer);
(* Le do teclado uma matriz M de tamanho NxN *)
var i, j: integer;
begin
    for i := 1 to N do
        for j := 1 to N do
            read(M[i, j]);
end;

procedure imprimir_matriz(var M: tpMatriz; N: integer);
(* Imprime na tela uma matriz M de tamanho NxN *)
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
    imprimir_matriz(M, N);

    (* Procura o 'X' na matriz *)    
    tam := 2;
    achou := false;
    while (tam <= N) and not achou do
    begin
        i := 1;
        while (i <= N - tam + 1) and not achou do
        begin
            j := 1;
            while (j <= N - tam + 1) and not achou do
            begin
                achou := achar_X(M, N, i, j, tam);
                j := j + 1;
            end;    
            i := i + 1;
        end;
        tam := tam + 1;
    end;

    if achou then
        inverte_cor(M, N);

    writeln('Nova Matriz: ');
    imprimir_matriz(M, N);
end.
