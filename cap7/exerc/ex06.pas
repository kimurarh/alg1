program ex06;

var
	n, cont, num, den, sinal: longint;
	soma: real;

begin
	read(n);

	if n <> 0 then
	begin
		soma := 0;
		cont := 1;
		num := 1000;
		den := 1;
		sinal := 1;

		while cont <= n do
		begin
			soma := soma + sinal * num/den;
			num := num - 3;
			den := den + 1;
			sinal := -sinal;
			cont := cont + 1;
		end;
		writeln(soma :0:2);
	end
end.
