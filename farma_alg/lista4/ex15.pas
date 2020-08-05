program verifica_igualdade;

var
	num, soma, multi: longint;

begin
	read(num);

	soma := 0;
	multi := num * 37;

	while multi <> 0 do
	begin
		soma := soma + multi mod 10;
		multi := multi div 10;
	end;

	if soma = num then
		writeln('SIM')
	else
		writeln('NAO');
end.
