(*
EXERCÍCIO COMPLEMENTAR 21 - DESVIOS CONDICIONAIS

*)

program classifica_idade;

var idade: integer;

begin
	read(idade);
	if idade < 18 then
		writeln('menor')
	else if idade < 65 then
		writeln('maior')
	else
		writeln('idosa');
end.
