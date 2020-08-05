program ex09;

var
	n, x, cont, num, den, fatAnterior, fat, sinal: longint;
	soma: real;

begin
	read(n, x); (* quantidade de termos da série, valor de x *)

	if n <> 0 then
	begin
		num := 1;
		den := 2;
		fatAnterior := 2;
		fat := 2;
		sinal := 1;
		soma := 0;
		cont := 1;

		while cont <= n do
		begin
			soma := soma + sinal * num / den;
			num := num * x * x * x * x;
			sinal := -sinal;
			cont := cont + 1;
			
			(* calcula o próximo denominador *)
			fat := fatAnterior + 4;
			while fatAnterior < fat do
			begin
				den := den * (fatAnterior + 1);
				fatAnterior := fatAnterior + 1;
			end;
		end;
		writeln(soma :0:6);
	end;
end.
