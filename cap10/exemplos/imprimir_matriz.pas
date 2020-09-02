program imprime_matriz;

var w: array[0..50, 1..10] of real;
    i, j: integer;

begin
    for i := 0 to 50 do
    begin
        for j := 1 to 10 do
            write(w[i, j], ' ');
        writeln;
    end;
end.
