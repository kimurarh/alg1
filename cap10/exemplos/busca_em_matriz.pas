program busca_em_matriz;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;

function busca(x: integer; var mat: matriz; n, m: integer): boolean;
var i, j: integer;
    achou: boolean;
begin
    achou := false;
    i := 1;
    while (i <= n) and not achou do
    begin
        j := 1;
        while (j <= m) and not achou do
        begin
            if mat[i, j] = x then
                achou := true;
            j := j + 1;
        end;
        i := i + 1;
    end;
    busca := achou;
end;

begin

end.
