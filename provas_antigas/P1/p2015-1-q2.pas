program p2015_1_q2;

var
	num, a, b: longint;

begin
	read(num); (* número de dois digitos *)

	a := num div 10;
	b := num mod 10;

	while b < num do
	begin
		b := a + b;
		a := b - a;
	end;

	if b = num then
		writeln('Sim, eh um numero de Keith')
	else
		writeln('Não eh um numero de Keith');
end.
