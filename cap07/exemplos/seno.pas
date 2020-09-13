program seno;

var
	cont, num, den, sinal, n, x: longint;
	soma: real;
	
begin
	read(n, x);
	cont := 1;
	num := x;
	den := 1;
	soma := 0;
	sinal := 1;

	while cont <= n do
	begin
		soma := soma + sinal * num/den;
		sinal := -sinal;
		den := den * (2*cont) * (2*cont + 1);
		num := num * x * x;
		cont := cont + 1;
	end;
	writeln(soma :0:5);
end.
