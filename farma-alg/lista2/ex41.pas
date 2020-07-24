program calcula_fibonacci;

var
	n, numA, numB, soma, cont: longint;

begin
	read(n);

	(* Inicia com os 2 primeiros números de fibonacci *)
	numA := 0;
	numB := 1;
	soma := numA + numB;
	cont := 2;
	
	if n = 1 then
		writeln(0)
	else
	begin
		while cont < n do
		begin
			(* Avança para o proximo número da sequencia *)
			numB := numB + numA;
			numA := numB - numA;

			soma := soma + numB;
			cont := cont + 1;
		end;
		writeln(soma);
	end;
end.
