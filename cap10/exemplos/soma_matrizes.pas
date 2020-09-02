program soma;

type matriz = array [1..50, 1..50] of longint;


procedure soma_matrizes(var v, w, soma_v_w: matriz; n, m: integer);
var i, j: integer;
begin
    for i := 1 to n do
        for j := 1 to m do
            soma_v_w[i, j] := v[i, j] + w[i, j];
end;

begin

end.
