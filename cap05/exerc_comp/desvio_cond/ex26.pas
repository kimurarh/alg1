(*
EXERCÍCIO COMPLEMENTAR 26 - DESVIOS CONDICIONAIS

*)

program verifica_dias;

var num: integer;

begin
	read(num);
	
	if (num >= 1) AND (num <= 7) then
		if num = 1 then
			writeln('DOMINGO')
		else if num = 2 then
			writeln('SEGUNDA')
		else if num = 3 then
			writeln('TERCA')
		else if num = 4 then
			writeln('QUARTA')
		else if num = 5 then
			writeln('QUINTA')
		else if num = 6 then
			writeln('SEXTA')
		else
			writeln('SÁBADO')
	else
		writeln('INEXISTENTE');
end.
