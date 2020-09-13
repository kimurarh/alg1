program raiz_ou_quadrado;

var n: longint;

begin
	read(n);
	if n >= 0 then
		writeln(sqrt(n) :0:0)
	else
		writeln(n*n);
end.
