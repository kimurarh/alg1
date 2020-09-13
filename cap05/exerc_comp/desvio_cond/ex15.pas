(*
EXERCÍCIO COMPLEMENTAR 15 - DESVIOS CONDICIONAIS

*)

program ordena;

var A, B, C: real;

begin
	read(A, B, C);
	if A > B then
		if B > C then
			writeln(A:0:2, ' ', B:0:2, ' ', C:0:2)
	  	else if C > A then
			writeln(C:0:2, ' ', A:0:2, ' ', B:0:2)	
		else
			writeln(A:0:2, ' ', C:0:2, ' ', B:0:2)
	else 
		if A > C then
	   		writeln(B:0:2, ' ', A:0:2, ' ', C:0:2)
		else if C > B then
			writeln(C:0:2, ' ', B:0:2, ' ', A:0:2)
		else
			writeln(B:0:2, ' ', C:0:2, ' ', A:0:2);
end.
