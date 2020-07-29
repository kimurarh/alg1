program fibonacci;

var ultimo, penultimo, fib, cont, n: longint;

begin
	read(n);	(* Define quantos numeros serao impressos *)
	ultimo := 1;	(* primeiros valores da sequencia de fibonacci *)
	penultimo := 0;
	
	writeln('primeiros ', n, ' números da sequencia de Fibonacci: ');
	writeln('fib(', 0, ') = ', penultimo);
	writeln('fib(', 1, ') = ', ultimo);

	cont := 2;
	while cont < n do
	begin
		fib := penultimo + ultimo;
		writeln('fib(', cont, ') = ', fib);
		penultimo := ultimo;
		ultimo := fib;
		cont := cont + 1;
	end;
end.
