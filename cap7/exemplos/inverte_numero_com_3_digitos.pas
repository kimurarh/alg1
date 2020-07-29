program inverte_numero_com_3_digitos;

var
	i, numero, unidade, inverso, resto: integer;

begin

	writeln('Entre com o número de tres digitos: ');
	read(numero);
	inverso := 0;

	i := 1;

	while i <= 3 do
	begin
		unidade := numero mod 10;
		resto := numero div 10;
		inverso := inverso * 10 + unidade;
		numero := resto;
		i := i + 1;
	end;

	writeln(inverso);
end.
