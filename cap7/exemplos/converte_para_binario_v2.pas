program converte_para_binario_v2;

var
	diferenca, n, pot2: longint;

begin
	writeln('Entre com um numero:');
	read(n);
	
	pot2 := 1;

	(* Encontra a maior potencia de 2 que divide n *)
	while pot2 <= n do
		pot2 := pot2 * 2;
	pot2 := pot2 div 2;

	while pot2 <> 0 do
	begin
		diferenca := n - pot2;
		if diferenca >= 0 then
		begin
			write(1);
			n := diferenca;
		end
		else
			write(0);

		pot2 := pot2 div 2;
	end;
	writeln;
end.
