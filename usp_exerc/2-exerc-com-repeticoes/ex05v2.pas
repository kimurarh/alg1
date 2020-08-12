program ex05v2;

var
	m, n, nCubo, numImpar, somaImpares, j, cont: longint;

begin
	read(m);

	if m > 0 then
	begin
		n := 1;
		
		while n <= m do
		begin
			nCubo := n*n*n;
			numImpar := 1;
			somaImpares := 0; (* apenas para entrar no laço *)
		
			(* encontra o primeiro número impar da soma de impares consecutivos que é igual a n^3 *)	
			while somaImpares <> nCubo do
			begin
				j := numImpar;
				cont := 1;
				somaImpares := 0;
				while cont <= n do
				begin
					somaImpares := somaImpares + j;
					j := j + 2;
					cont := cont + 1;
				end;
				
				numImpar := numImpar + 2;
			end;
			numImpar := numImpar - 2;
			
			(* imprime a soma de impares consecutivos *)
			write(n, '³ = ');
			j := numImpar;
			cont := 1;
			while cont < n do
			begin
				write(j, ' + ');
				j := j + 2;
				cont := cont + 1;
			end;
			writeln(j);

			n := n + 1;
		end;
	end;
end.
