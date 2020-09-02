program encontra_menor_elemento;

type matriz = array [1..50, 1..50] of longint;


function acha_menor_matriz(var w: matriz; n, m: integer): integer;
var i, j: integer;
    menor: integer;

begin
    menor := w[1, 1];
    for i := 1 to n do
        for j := 1 to m do
            if w[i, j] < menor then
                menor := w[i, j];
    acha_menor_matriz := menor;
end;

begin

end.
