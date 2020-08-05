program sequencia_piramidal; 

var
	n, num, i, nivel, cont: integer;
	par, parAnterior, piramidal: boolean;

begin
	read(n); (* tamanho da sequencia *)

	if n <> 0 then
	begin
		read(num);
		i := 1;
		nivel := 1; (* representa o nível da piramide *)
		piramidal := true;

		(* verifica paridade do primeiro numero *)
		if num mod 2 = 0 then
			parAnterior := true
		else
			parAnterior := false;
		cont := 1;

		while i < n do
		begin
			read(num);

			(* verifica paridade do numero *)
			if num mod 2 = 0 then
				par := true
			else
				par := false;

			if parAnterior = par then
				cont := cont + 1
			else
			begin
				(* numero de pares/impares deve ser igual ao nivel atual *)
				if cont <> nivel then
					piramidal := false;
				nivel := nivel + 1;
				cont := 1;
				parAnterior := par;
			end;
			i := i + 1;
		end;

		(* verifica a ultima sequencia de pares/impares *)
		if nivel <> cont then
			piramidal := false;

		if piramidal then
			writeln(nivel)
		else
			writeln(0);
	end;
end.
