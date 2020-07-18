program checa_propriedade;

var num, teste: integer;

begin
	read(num);
	teste := (num div 100) + (num mod 100);
	teste := teste * teste;
	if teste = num then
		writeln('SIM')
	else
		writeln('NAO');
end.
