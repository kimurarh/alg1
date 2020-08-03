(* Calcula o primeiro número de Fibonacci maior do que um determinado valor *)
program primeiro_fibonacci_maior;

var
	num, ultimo, penultimo, soma: longint;

begin
	read(num);

	ultimo := 1;
	penultimo := 0;
	soma := ultimo + penultimo;

	while soma <= num do
	begin
		penultimo := ultimo;
		ultimo := soma;
		soma := penultimo + ultimo;
	end;
	writeln(soma);
end.
