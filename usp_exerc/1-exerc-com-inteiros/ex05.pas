program ex05;

var
	dia, quantidade, diaMaior, quantidadeMaior: integer;

begin
	dia := 1;
	quantidadeMaior := 0;
	diaMaior := 1;

	while dia <= 30 do
	begin
		read(quantidade);
		if quantidade > quantidadeMaior then
		begin
			quantidadeMaior := quantidade;
			diaMaior := dia;
		end;
		dia := dia + 1;
	end;
	writeln('No dia ', diaMaior, ' tivemos a maior venda do mês, de ', quantidadeMaior, ' discos');
end.
