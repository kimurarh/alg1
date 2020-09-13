program histograma;

var	bebe, crianca, adolescente, adulto, idoso, idade: integer;

begin
    (* Inicializa os contadores *)
	bebe := 0;
	crianca := 0;
	adolescente := 0;
	adulto := 0;
	idoso := 0;

	read(idade);
	while idade <> -1 do
	begin
		case idade of 
			0..2: bebe := bebe + 1;
			3..12: crianca := crianca + 1;
			13..19: adolescente := adolescente + 1;
			20..59: adulto := adulto + 1;
			else idoso := idoso + 1;
		end;
		read(idade);
	end;

	writeln('bebes: ', bebe);
	writeln('criancas: ', crianca);
	writeln('adolescentes: ', adolescente);
	writeln('adultos: ', adulto);
	writeln('idosos: ', idoso);
end.
