(*
EXERCÍCIO COMPLEMENTAR 22 - CÁLCULOS SIMPLES

*)

program salario_liquido;

var valorHora, inss: real;
	numAulas: integer;

begin
	read(valorHora, numAulas, inss);
	writeln(valorHora * numAulas * (100 - inss)/100 :0:2);
end.
