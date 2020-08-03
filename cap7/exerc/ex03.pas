program ex03;

var
	i, soma, produto, x, n: longint;

begin
	read(n);

	i := 0;
	x := 1; (* apenas para entrar no loop *)
	soma := 0;
	produto := 1;

	while (i < n) and (x <> 0) do
	begin
		read(x);
		soma := soma + x;
		produto := produto * x;	
		i := i + 1;
	end;

	if x <> 0 then
		writeln(soma/produto :0:2)
	else
		writeln('divisão por zero');
end.
