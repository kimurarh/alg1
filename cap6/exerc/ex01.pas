program ex01;

var n, somaPares, somaImpares: longint;

begin
	read(n);

	somaPares := 0;
	somaImpares := 0;

	while n <> 0 do
	begin
		if n mod 2 = 0 then
			somaPares := somaPares + n
		else
			somaImpares := somaImpares + n;
		read(n)
	end;
	writeln('Soma dos pares: ', somaPares);
	writeln('Soma dos impares: ', somaImpares);
end.
