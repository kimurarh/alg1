program verifica_poligono_regular;

var
	lado, ladoInicial, numLados: integer;
	regular: boolean;

begin
	read(lado);
	ladoInicial := lado;
	numLados := 0;
	regular := true;

	while lado <> 0 do
	begin
		numLados := numLados + 1;
		if lado <> ladoInicial then
			regular := false;
		read(lado);
	end;

	if regular and (numLados >= 3) then
		writeln('SIM')
	else
		writeln('NAO');
end.
