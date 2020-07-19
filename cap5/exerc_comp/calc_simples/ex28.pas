(*
EXERCÍCIO COMPLEMENTAR 28 - CÁLCULOS SIMPLES

*)

program calcula_gasto_viagem;

var tempoGasto, velocidadeMedia, distancia: real;

begin
	read(tempoGasto, velocidadeMedia);
	distancia := tempoGasto * velocidadeMedia;
	writeln('Distancia: ', distancia :0:2);
	writeln('Litros: ', distancia / 12 :0:2);
end.
