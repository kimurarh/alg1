(*
EXERCÍCIO COMPLEMENTAR 30 - CÁLCULOS SIMPLES

*)

program calcula_divida;

var divida, juros: real;

begin
	read(divida, juros);
	writeln(divida * (1 + juros/100) :0:2);
end.
