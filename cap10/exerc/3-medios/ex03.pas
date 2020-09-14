program ex02;

const MAX_L = 200; MAX_C = 200;
type matriz = array [1..MAX_L, 1..MAX_C] of longint;
var mat: matriz;
    n: longint;

procedure le_matriz(var mat: matriz; n: longint);
var i, j: longint;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(mat[i, j]);
end;

function eh_quadrado_magico(var mat: matriz; n: longint): boolean;
var i, j, soma_inicial, soma_diag, soma_lin, soma_col: longint; verifica: boolean;
begin
    soma_inicial := 0;
    soma_diag := 0;
    soma_lin := 0;
    soma_col := 0;

    (* diagonal principal *)
    soma_inicial := 0;
    for i := 1 to n do
        soma_inicial := soma_inicial + mat[i, i];

    (* diagonal secundaria *)
    soma_diag := 0;
    for i := 1 to n do
        soma_diag := soma_diag + mat[i, n - i + 1];

    if soma_diag <> soma_inicial then
        eh_quadrado_magico := false
    else
    begin
        verifica := true;
        i := 1;
        (* soma as linhas e colunas *)
        while (i <= n) and verifica do
        begin
            soma_lin := 0;
            soma_col := 0;
            for j := 1 to n do
            begin
                soma_lin := soma_lin + mat[i, j];
                soma_col := soma_col + mat[j, i];
            end;
            if (soma_lin <> soma_inicial) or (soma_col <> soma_inicial) then
                verifica := false;
            i := i + 1;
        end;
    end;
end;

begin
    read(n);
    le_matriz(mat, n);
    if eh_quadrado_magico(mat, n) then
        writeln('sim')
    else
        writeln('nao');
end.
