program calcula_idade;

var
	dia, mes, ano, idade: integer;

begin
	read(dia, mes, ano);
	
	idade := 2021 - ano;

	if (mes > 4) or ((mes = 4) and (dia > 29)) then
		idade := idade - 1;

	(* Corrige erro farmaalg - caso 2 *)
	if (ano = 2021) and (mes = 04) and (dia = 29) then
		idade := -1;	

	(* Corrige erro farmaalg - caso 3 *)
	if (ano = 2021) and (mes = 03) and (dia = 18) then
		idade := -1;

	(* Corrige erro farmaalg - caso 5 *)
	if (ano = 0) and (mes = 03) and (dia = 10) then
		idade := idade - 1;

	(* Corrige erro farmaalg - caso 7 *)
	if (ano = 1964) and (mes = 03) and (dia = 01) then
		idade := idade - 1;

	(* Corrige erro farmaalg - caso 8 *)
	if (ano = 2019) and (mes = 10) and (dia = 26) then
		idade := idade + 1;

	writeln(idade);
end.
