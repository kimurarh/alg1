(*
EXERCÍCIO COMPLEMENTAR 29 - CÁLCULOS SIMPLES

*)

program salario_vendedor;

var totalVendas: real;
	numSapatos: integer;

begin
	read(totalVendas, numSapatos);
	writeln(totalVendas * 0.2 + numSapatos * 5 :0:2);
end.
