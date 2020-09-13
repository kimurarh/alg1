(*
EXERCÍCIO COMPLEMENTAR 24 - CÁLCULOS SIMPLES

*)

program calcula_gorjeta;

var gastos, gorjeta: real;

begin
	read(gastos);
	gorjeta := gastos * 0.1;
	writeln('Valor da gorjeta: R$', gorjeta :0:2);
	writeln('Valor total: R$', gastos + gorjeta :0:2);
end.
