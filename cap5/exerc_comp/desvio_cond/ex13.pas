(*
EXERCÍCIO COMPLEMENTAR 13 - DESVIOS CONDICIONAIS

*)

program menor_maior;

var A, B, C, D, maior, menor: real;

begin
	read(A, B, C, D);

	if A < B then
	begin
		menor := A;
		maior := B;
	end
	else
	begin
		menor := B;
		maior := A;
	end;

	if menor > C then
	   menor := C;
	if maior < C then
		maior := C;

	if menor > D then
		menor := D;
	if maior < D then
		maior := D;

	writeln(menor :0:2, ' ', maior :0:2);
	
end.
