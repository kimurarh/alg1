program converte;

var n: integer;

function eh_binario(num: integer): boolean;
var digito: integer;
begin
	eh_binario := true;
	while num <> 0 do
	begin
		digito := num mod 10;
		if (digito <> 0) and (digito <> 1) then
			eh_binario := false;
		num := num div 10;
	end;
end;

function converte_em_decimal(num: integer): integer;
var potenciaDois: integer;
begin
	converte_em_decimal := 0;
	potenciaDois := 1;
	while num <> 0 do
	begin
		converte_em_decimal := converte_em_decimal + (num mod 10) * potenciaDois;
		potenciaDois := potenciaDois * 2;
		num := num div 10;
	end;
end;


begin
	read(n);
	if eh_binario(n) then
		writeln(converte_em_decimal(n))
	else
		writeln(n, ' nao eh binario');
end.
