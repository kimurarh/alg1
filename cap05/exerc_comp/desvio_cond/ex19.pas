(*
EXERCÍCIO COMPLEMENTAR 19 - DESVIOS CONDICIONAIS

*)

program verifica;

var num: real;

begin
	read(num);
	if num = 5 then
		writeln('igual a 5')
	else if num = 200 then
		writeln('igual a 200')
	else if num = 400 then
		writeln('igual a 400')
	else if (num >= 500) AND (num <= 1000) then
		writeln('intervalo entre 500 e 1000')
	else
		writeln('fora dos escopos');
end.
