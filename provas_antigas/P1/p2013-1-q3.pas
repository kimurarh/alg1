program p2013_1_q3;

var
	num, mult, soma, algarismo: longint;

begin
	read(num);
	mult := num * 37;
	writeln(num, ' vezes 37 = ', mult);
	write('A soma ');
	soma := 0;

	while mult > 9 do
	begin
		algarismo := mult mod 10;
		write(algarismo, '+');
		soma := soma + mult mod 10;
		mult := mult div 10;
	end;
	(* ultimo algarismo *)
	write(mult, ' ');
	soma := soma + mult;

	if soma = num then
		writeln('coincide com ', num)
	else
		writeln('não coincide com ', num);
end.
