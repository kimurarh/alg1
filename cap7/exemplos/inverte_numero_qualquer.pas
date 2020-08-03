program inverte_numero_qualquer;

var
	numero, unidade, inverso: longint;

begin

	writeln('Entre com o número:');
	read(numero);
	inverso := 0;

	while numero <> 0 do
	begin
		unidade := numero mod 10;
		inverso := inverso * 10 + unidade;
		numero := numero div 10;
	end;

	writeln(inverso);
end.
