(*
EXERCÍCIO COMPLEMENTAR 26 - CÁLCULOS SIMPLES

*)

program calcula_rendimento;

var deposito, taxaJuros, rendimento: real;

begin
	read(deposito, taxaJuros);
	rendimento := deposito * taxaJuros / 100;
	writeln('Rendimento: ', rendimento :0:2);
	writeln('Total: ', deposito + rendimento :0:2);
end.
