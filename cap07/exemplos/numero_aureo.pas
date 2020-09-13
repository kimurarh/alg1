program numero_aureo;

const PRECISAO = 0.00000000000001;

var ultimo, penultimo, soma: longint;
	nAureo, nAureoAnterior: real;

begin
	ultimo := 1;
	penultimo := 1;
	nAureoAnterior := -1; (* para funcionar o primeiro teste *)
	nAureo := 1;

	writeln(nAureo:15:14);

	while abs(nAureo - nAureoAnterior) >= PRECISAO do
	begin
		soma := penultimo + ultimo;
		nAureoAnterior := nAureo;
		nAureo := soma / ultimo;
		writeln(nAureo:15:14);
		penultimo := ultimo;
		ultimo := soma;
	end;
end.
