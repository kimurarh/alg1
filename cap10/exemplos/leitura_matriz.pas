program ler_matriz;

var w: array [0..50, 1..10] of real;
    i, j: integer;

begin
    for i := 0 to 50 do
        for j := 1 to 10 do
            read(w[i, j]);
end.
