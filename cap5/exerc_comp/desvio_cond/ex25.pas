(*
EXERCÍCIO COMPLEMENTAR 25 - DESVIOS CONDICIONAIS

*)

program verifica_notas;

var p1, p2, media: real;

begin
	read(p1, p2);
	media := (p1 + p2) / 2;
	
	if media >= 7 then
		writeln('APROVADO')
	else if media >= 3 then
		writeln('EXAME')
	else 
		writeln('REPROVADO');

end.
