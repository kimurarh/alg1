(*
EXERCÍCIO COMPLEMENTAR 22 - DESVIOS CONDICIONAIS

*)

program idade_eleitor;

var idade: integer;

begin
	read(idade);
	if idade < 16 then
		writeln('nao eleitor')
	else if (idade >= 18) AND (idade < 65) then
		writeln('obrigatorio')
	else
		writeln('facultativo');
end.
