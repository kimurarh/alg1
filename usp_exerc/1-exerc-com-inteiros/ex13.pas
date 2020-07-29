program ex13;

var
	n, cont, somaDivisores: longint;

begin
	read(n);
	somaDivisores := 0;

	cont := 1;

	while cont < n do
	begin
		if n mod cont = 0 then
			somaDivisores := somaDivisores + cont;
		cont := cont + 1;
	end;

	if somaDivisores = n then
		writeln(n, ' é perfeito')
	else
		writeln(n, ' não é perfeito');
end.
