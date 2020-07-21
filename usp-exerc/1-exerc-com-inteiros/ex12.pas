program ex12;

var
	a, b, aux: longint;

begin
	read(a, b);
	
	(* Garante de a > b --> para o algoritmo de Euclides*)
	if b > a then
	begin
		a := a + b;
		b := a - b;
		a := a - b;
	end;

	while b <> 0 do
	begin
		aux := a mod b;
		a := b;
		b := aux;
	end;

	writeln(a);
end.
