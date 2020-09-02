program matriz_transposta;

var w: array [0..50, 1..10] of real;
    i, j: integer;

begin
    for j := 1 to 10 do
    begin
        for i := 0 to 50 do
            write(w[i, j], ' ');
        writeln;
    end;
end.
