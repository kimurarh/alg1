(*
EXERCÍCIO COMPLEMENTAR 23 - DESVIOS CONDICIONAIS

*)

program categoria_natacao;

var idade: integer;

begin
	read(idade);
	if idade < 5 then 
		writeln('INVALIDO')
	else if idade <= 7 then
		writeln('Infantil A')
	else if idade <= 10 then
		writeln('Infantil B')
	else if idade <= 13 then
		writeln('Juvenil A')
	else if idade <= 17 then
		writeln('Juvenil B')
	else
		writeln('Senior');
end.
