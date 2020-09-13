program converte;

var n: longint;

function converte_em_decimal(n: longint): longint;
var soma, potenciaDois: longint;
begin
	soma := 0;
	potenciaDois := 1;
	while n <> 0 do
	begin
		soma := soma + (n mod 10) * potenciaDois;
		potenciaDois := potenciaDois * 2;
		n := n div 10;
	end;
	converte_em_decimal := soma;
end;

begin
	read(n);
	writeln(converte_em_decimal(n));
end.
