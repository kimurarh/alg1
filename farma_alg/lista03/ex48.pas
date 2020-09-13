program produto_a_ate_b;

var
	a, b, produto: longint;

begin
	read(a, b);

	if (a <= 0) or (b <= 0) or (a mod 2 = 0) or (b mod 2 = 0) or (a > b) then
		writeln('erro')
	else
	begin
		produto := 1;
		while a <= b do
		begin
			produto := produto * a;
			a := a + 2;
		end;
		writeln(produto);
	end;
end.

