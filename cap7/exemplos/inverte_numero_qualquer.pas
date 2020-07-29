program inverte_numero_qualquer;

var
	i, numero, unidade, inverso: longint;

begin

	writeln('Entre com o número:');
	read(numero);
	inverso := 0;

	i := 1;
	while numero <> 0 do
	begin
		unidade := numero mod 10;
		inverso := inverso * 10 + unidade;
		numero := numero div 10;
		i := i + 1;
	end;

	writeln(inverso);
end.
