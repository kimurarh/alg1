program verifica_se_tem_repetidos;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;

(* busca a partir de uma posicao *)
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

procedure proxPosicao (lin, col, n, m: integer; var proxLin, proxCol: integer);
begin
    if col = n then
    begin
        proxLin := lin + 1;
        proxCol := 1;
    end
    else
    begin
        proxLin := lin;
        proxCol := col + 1;
    end;
end;

function tem_repetidos(var mat: matriz; n, m: integer): boolean;
var i, j, proxLin, proxCol: integer;
    repetiu: boolean;
begin
    repetiu := false;
    i := 1;
    while (i <= n) and not repetiu do
    begin
        j := 1;
        while (j <= m) and not repetiu do
        begin
            proxPosicao(i, j, n, m, proxLin, proxCol);
            repetiu := busca(mat[i, j], mat, n, m, proxLin, proxCol);
            j := j + 1;
        end;
        i := i + 1;
    end;
    tem_repetidos := repetiu;
end;

begin

end.
