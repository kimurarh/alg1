program serie_valor_quadrado;

var
	n, anterior: longint;
	valor_quadrado: boolean;

begin
	read(n);

	if n <> 0 then
	begin
		anterior := n;
		read(n);
		
		(* verifica o par inicial *)
		if anterior * anterior = n then
			valor_quadrado := true
		else
			valor_quadrado := false;

		while (n <> 0) and valor_quadrado do
		begin
			read(n);
			if n <> 0 then
			begin
				anterior := n;
				read(n);
				
				if anterior * anterior <> n then
					valor_quadrado := false
			end;
		end;

		if valor_quadrado then
			writeln(1)
		else
			writeln(0);
	end;
end.
