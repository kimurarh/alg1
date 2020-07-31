program p2019_q1;

var
	consumo, tempo, velocidade, distancia: longint;

begin
	read(consumo, tempo, velocidade);
	distancia := tempo * velocidade;
	writeln(distancia / consumo :0:2);	
end.
