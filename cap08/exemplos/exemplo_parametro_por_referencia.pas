program exemplo_parametro_por_referencia;

var a, b: longint;

function increm_se_pos (var n: longint): boolean;
begin
	if n > 0 then
	begin
		n := n + 1;
		increm_se_pos := true;
	end
	else
		increm_se_pos := false;
end;

begin
	read(a, b);
	if increm_se_pos(a) and increm_se_pos(b) then
		writeln('Positivos');
	writeln(a, ' ', b);
end.
