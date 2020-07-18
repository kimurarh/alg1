program troca_conteudo;

var a, b: longint;

begin
	read(a, b);
	a := a + b;
	b := a - b;
	a := a - b;
	writeln(a, ' ', b);
end.
