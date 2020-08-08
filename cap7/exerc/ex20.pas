program ex20;

var
	n, num, numDiv, i, potencia, maiorPot: longint;

begin
	read(n);

	if n <> 0 then
	begin
		maiorPot := 0;
		num := 2;

		while n <> 1 do
		begin
			(* verifica o número de divisores *)
			numDiv := 0;
			i := 2; (* não precisa verificar o 1 *)
			while i < num do
			begin
				if num mod i = 0 then
					numDiv := numDiv + 1;
				i := i + 1;
			end;

			(* se for primo, dividir o máximo de vezes possível *)
			if numDiv = 0 then
			begin
				potencia := 1;
				while n mod num = 0 do
				begin
					n := n div num;
					potencia := potencia * num;
				end;
	
				if potencia > maiorPot then
					maiorPot := potencia;
			end;
			num := num + 1;
		end;
		writeln(maiorPot);
	end;
end.
