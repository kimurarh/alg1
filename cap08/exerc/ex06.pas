program compara_datas;

var dia1, mes1, ano1, dia2, mes2, ano2: integer;

function eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2: integer): boolean;
begin
	eh_anterior := false;
	if ano1 < ano2 then
		eh_anterior := true
	else if (ano1 = ano2) and (mes1 < mes2) then
		eh_anterior := true
	else if (mes1 = mes2) and (dia1 < dia2) then
		eh_anterior := true
end;

begin
	read(dia1, mes1, ano1, dia2, mes2, ano2);
	if eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2) then
		writeln('A primeira data eh anterior')
	else
		writeln('A primeira data nao eh anterior');
end.
