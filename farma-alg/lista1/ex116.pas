program verifica_condicoes;

var num: longint;

begin
	read(num);
	if ((num mod 2 <> 0) AND (num < -20)) OR ((num mod 2 = 0) AND (num > 7)) then
		writeln('SIM')	
	else
		writeln('NAO');
end.
