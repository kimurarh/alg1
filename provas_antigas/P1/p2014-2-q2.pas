program teste;

var
	n, sinal: longint;
	S, diferenca: real;

begin
	
	S := 1;
	n := 1;
	sinal := 1;
	diferenca := 1;

	while diferenca >= 0.00000001 do
	begin
		n := n + 1;
		sinal := -sinal;
		S := S + sinal * 1/n;
		
		diferenca := abs(1/n - 1/(n - 1));	
	end;	
	writeln(S);
end.

