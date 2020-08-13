program testa_binario;

var n: integer;

function eh_binario(n: integer): boolean;
var digito: integer;
begin
	eh_binario := true;
	while n <> 0 do
	begin
		digito := n mod 10;
		if (digito <> 0) and (digito <> 1) then
			eh_binario := false;
		n := n div 10;		
	end;
end;


begin
	read(n);
	if eh_binario(n) then
		writeln('sim')
	else
		writeln('nao');
end.
