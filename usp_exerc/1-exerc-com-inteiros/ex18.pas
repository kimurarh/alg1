program ex18;

var
	a, b, c: longint;

begin
	read(a, b, c);

	(* os 2 primeiros 'if' garantem que 'c' tenha o maior valor *)
	if a > c then
	begin
		a := a + c;
		c := a - c;
		a := a - c;
	end;

	if b > c then
	begin
		b := b + c;
		c := b - c;
		b := b - c;
	end;

	if a*a + b*b = c*c then
		writeln(a, ', ', b, ' e ', c, ' formam os lados de um triangulo retangulo')
	else
		writeln(a, ', ', b, ' e ', c, ' NAO formam os lados de um triangulo retangulo');
end.
