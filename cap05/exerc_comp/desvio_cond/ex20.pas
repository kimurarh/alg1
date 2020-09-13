(*
EXERCÍCIO COMPLEMENTAR 20 - DESVIOS CONDICIONAIS

*)

program calcula_credito;

var saldo: real;

begin
	read(saldo);
	if (saldo >= 0) AND (saldo <= 500) then
		writeln('0.00')
	else if (saldo >= 501) AND (saldo <= 1000) then
		writeln(saldo * 0.3 :0:2)
	else if (saldo >= 1001) AND (saldo <= 3000) then
		writeln(saldo * 0.4 :0:2)
	else if (saldo >= 3001) then
		writeln(saldo * 0.5 :0:2);
end.
