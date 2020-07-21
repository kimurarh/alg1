program ex06;

var
	n, cont, nota, maior, menor: integer;

begin
	write('Informe a quantidade de alunos na turma: ');
	read(n);
	
	cont := 1;
	maior := 0;
	menor := 100;

	writeln('Informe as notas dos ', n, ' alunos:');
	while cont <= n do
	begin
		read(nota);
		if nota > maior then
			maior := nota
		else if nota < menor then
			menor := nota;
		cont := cont + 1;	
	end;
	writeln('A maior nota foi ', maior, ' e a menor nota foi ', menor, '.');
end.
