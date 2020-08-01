program conta_numero_de_digitos;

var
	n, m, cont: longint;

begin
	read(n, m);

	cont := 0;

	while m > 0 do
	begin
		(* verifica o ultimo digito de m *)
		if m mod 10 = n then
			cont := cont + 1;
		(* retira o ultimo digito de m *)
		m := m div 10;
	end;

	if cont = 0 then
		writeln('NAO')
	else
		writeln(cont);
end.
