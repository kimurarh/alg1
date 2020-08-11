program soma_serie;

var
	i, sinal, num: longint;
   	soma: real;

begin
	i := 1;
	soma := 0;
	sinal := -1;
	num := 1;

	while i <= 10 do
	begin
		if i mod 2 <> 0 then
			soma := soma + sinal * num / ((num + 1) * 10)
		else
			soma := soma + sinal * num * 10 / (num + 1);
		sinal := -sinal;
		num := num + 2;
		i := i + 1;
	end;
	writeln(soma:0:2);
end.
