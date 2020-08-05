program verifica_sequencia;

var
	num, cont, soma, anterior: longint;
	condicao: boolean;

begin
	read(num);
	
	cont := 1;
	soma := num;
	anterior := num;
	condicao := true;

	while condicao do
	begin
		anterior := num;
		read(num);
		cont := cont + 1;
		soma := soma + num;

		if (num = anterior / 2) or (num = anterior * 2) then
			condicao := false;
	end;
	writeln(cont, ' ', soma, ' ', anterior, ' ', num);
end.
