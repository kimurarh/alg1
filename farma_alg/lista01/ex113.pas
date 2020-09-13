program verifica_emprestimo;

var salario, emprestimo: longint;

begin
	read(salario, emprestimo);
	if emprestimo > salario * 0.3 then
		writeln('NAO')
	else
		writeln('SIM');
end.
