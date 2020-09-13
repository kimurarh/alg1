program percentual_de_acrescimo;

var antigo, atual: real;

function acrescimo(antigo, atual: real): real;
begin
	acrescimo := (atual - antigo) / antigo * 100;
end;

begin
	write('Digite o preço antigo e o preço atual do produto: ');
	read(antigo, atual);

	writeln(acrescimo(antigo, atual) :0:2, '% de aumento');
end.
