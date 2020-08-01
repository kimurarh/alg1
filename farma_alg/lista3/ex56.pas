program soma_pares_entre_n_m;

var
	n, m, soma: longint;

begin
	read(n, m);

	(* garante que n < m *)
	if n > m then
	begin
		n := n + m;
		m := n - m;
		n := n - m;
	end;

	soma := 0;
	n := n + 1;

	while n < m do
	begin
		if n mod 2 = 0 then
			soma := soma + n;
		n := n + 1;
	end;

	writeln(soma);

end.
