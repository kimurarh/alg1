program evita_div_por_zero;

var x, y: integer;

procedure ler_dif_zero (var x: integer);
begin
	read(x);
	while x = 0 do
		read(x);
end;

begin
	read(x);
	ler_dif_zero(y);
	writeln(x/y);
end.
