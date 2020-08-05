program ex08;

var
	n, cont, num, den, sinal, divisor: longint;
	soma: real;
	crescente: boolean;

begin
	read(n); (* quantidade de termos *)

	if n <> 0 then
	begin
		cont := 1;
		soma := 0;
		num := 1;
		den := 1;
		sinal := 1;
		crescente := true;

		while cont <= n do
		begin
			soma := soma + sinal * num / den;
			sinal := -sinal;
			num := num * 2;
			
			(* chegou no valor de 3! -> deve decrescer até 1! *)
			if den = 6 then
			begin
				divisor := 3;
				crescente := false;
			end;

			(* chegou em 1! -> deve acrescentar até 3! *)
			if den = 1 then
				crescente := true;

			(* Verifica se está crescente ou decrescente *)
			if crescente = true then
				den := den * (den + 1)
			else
			begin
				den := den div divisor;
				divisor := divisor - 1;
			end;
			cont := cont + 1;
		end;
		writeln(soma :0:2);
	end;

end.
