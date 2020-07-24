program aumento_salario;

var
	salario, salarioNovo: real;
	cargo: integer;

begin
	read(salario, cargo);
	
	if cargo = 101 then
		salarioNovo := salario * 1.1
	else 
		if cargo = 102 then
			salarioNovo := salario * 1.2
		else
			if cargo = 103 then
				salarioNovo := salario * 1.3
			else
				salarioNovo := salario * 1.4;

	writeln(salario :0:2);
	writeln(salarioNovo :0:2);
	writeln(salarioNovo - salario :0:2);

end.
