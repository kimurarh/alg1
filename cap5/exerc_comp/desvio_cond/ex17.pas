(*
EXERCÍCIO COMPLEMENTAR 17 - DESVIOS CONDICIONAIS

*)

program verifica_intervalo;

var num: real;

begin
	read(num);
	if (num > 20) AND (num < 90) then
		writeln('sim')
	else
		writeln('nao');
end.
