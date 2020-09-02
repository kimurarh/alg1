program busca_em_matriz_modificado;

(* busca a partir de uma posicao *)

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;

function busca(x: integer; var mat: matriz;
               n, m, lin_ini, col_ini: integer): boolean;
var i, j: integer;
    achou: boolean;
begin
    achou := false;
    i := lin_ini; j := col_ini; (* busca comeca nesta posicao *)
    while (i <= n) and not achou do
    begin
        while (j <= m) and not achou do
        begin
            if mat[i, j] = x then
                achou := true;
            j := j + 1;
        end;
        i := i + 1;
        j := 1; (* indice da coluna volta a 1 quando 'pula' de linha *)
    end;
    busca := achou;
end;

begin

end.
