program p2014_1_q3;

var
	num, numQuadrado: integer;
	valorQuadrado: boolean;

begin
	read(num);

	if num <> 0 then
	begin
		valorQuadrado := true;
		read(numQuadrado);
		while (num <> 0) and (numQuadrado <> 0) do
		begin
			read(num);
			if num <> 0 then
			begin
				read(numQuadrado);
				if numQuadrado <> num*num then
					valorQuadrado := false;
			end;
		end;

		(* caso digite uma quantidade impar de numeros *)
		if numQuadrado = 0 then
			valorQuadrado := false;

		if valorQuadrado then
			writeln('Sim, eh serie Valor-Quadrado')
		else
			writeln('Não eh serie Valor-Quadrado');
	end;
end.
