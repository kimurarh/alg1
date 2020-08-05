program fibonacci_maior;

const max = 1000;

var ultimo, penultimo, soma: integer;

begin
	ultimo := 1;
	penultimo := 1;
	soma := penultimo + ultimo;

	while soma <= max do
	begin
		penultimo := ultimo;
		ultimo := soma;
		soma := penultimo + ultimo;
	end;
	writeln(soma);
end.


