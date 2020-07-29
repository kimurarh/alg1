program produto_primeiros_pares;

var
	n, produto, i, cont: longint;

begin
	read(n);

	if n <= 0 then
	   writeln(0)
	else
	begin	
		produto := 2; (* 2 é o primeiro número par *)
		i := 4;
		cont := 1;

		while cont < n do
		begin
			produto := produto * i;
			i := i + 2;
			cont := cont + 1;
		end;
		writeln(produto);
	end;
end.
