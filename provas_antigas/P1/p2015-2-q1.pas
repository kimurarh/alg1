program p2015_2_q1;

var
	a, b, somaDigitos: longint;

begin
	read(a, b);

	somaDigitos := 0;

	while a <> 0 do
	begin
		somaDigitos := somaDigitos + a mod 10;
		a := a div 10;
	end;

	if somaDigitos = b then
		writeln('Sim, a soma dos digitos do primeiro é igual ao valor do segundo')
	else
		writeln('Nao, a soma dos digitos do primeiro é diferente ao valor do segundo');
end.
