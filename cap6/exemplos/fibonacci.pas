program fibonacci;

var ultimo, penultimo, soma, cont, n: integer;

begin
	read(n);	(* Define quantos numeros serao impressos *)
	ultimo := 1;	(* primeiros valores da sequencia de fibonacci *)
	penultimo := 1;
	
	writeln('primeiros ', n, ' números da sequencia de Fibonacci: ');
	writeln(penultimo);
	writeln(ultimo);

	cont := 3;
	while cont <= n do
	begin
		soma := penultimo + ultimo;
		writeln(soma);
		penultimo := ultimo;
		ultimo := soma;
		cont := cont + 1;
	end;
end.
