program eh_contrario;

var n, m: integer;

function contrario (n, m: integer): boolean;
var invertido: integer;
begin
	invertido := 0;
	while n <> 0 do
	begin
		invertido := invertido * 10 + n mod 10;		
		n := n div 10;
	end;
	
	contrario := false;
	if invertido = m then
		contrario := true;
end;


begin
	read(n, m);
	if contrario(n, m) then
		writeln(n, ' eh o contrario de ', m)
	else
		writeln(n, ' nao eh o contrario de ', m);
end.
