program ler_diferente_de_zero;

var n: integer;

procedure ler (var n: integer);
begin
	read(n);
	while n = 0 do
		read(n);
end;

begin
	ler(n);
	writeln(n);
end.
