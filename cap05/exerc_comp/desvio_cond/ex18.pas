(*
EXERCÍCIO COMPLEMENTAR 18 - DESVIOS CONDICIONAIS

*)

program divisivel;

var num: integer;

begin
	read(num);
	if num mod 10 = 0 then
		writeln(10, ' ', 5, ' ', 2)
	else if num mod 5 = 0 then
	   writeln(5)
	else if num mod 2 = 0 then
		writeln(2)
	else
		writeln('nenhum');
end.
