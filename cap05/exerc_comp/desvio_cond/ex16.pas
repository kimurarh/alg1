(*
EXERCÍCIO COMPLEMENTAR 16 - DESVIOS CONDICIONAIS

*)

program quadrado_raiz;

var n, m, maior, menor: real;

begin
	read(n, m);
	
	if n < m then
	begin
		menor := n;
		maior := m;
	end
	else
	begin
		menor := m;
		maior := n;
	end;

	write(menor * menor :0:2, ' ');
	if maior >= 0 then
		write(sqrt(maior) :0:2);
	writeln;
end.
