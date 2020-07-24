program soma_impares_positivos;

var
	n, numImpar, cont, soma: longint;

begin
	read(n);

	numImpar := 1;
	cont := 0;
	soma := 0;

	while cont < n do
	begin
		soma := soma + numImpar;
		numImpar := numImpar + 2;
		cont := cont + 1;
	end;
	writeln(soma);

end.
