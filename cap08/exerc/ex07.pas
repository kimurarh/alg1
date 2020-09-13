program incrementa_uma_unidade;

var n: integer;

procedure incrementa(var n: integer);
begin
	n := n + 1;
end;

begin
	n := 1;
	while n <= 10 do
	begin
		writeln(n);
		incrementa(n);
	end;
end.
