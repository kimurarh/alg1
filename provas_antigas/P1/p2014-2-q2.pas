program p2014_2_q2;

var
	i, sinal: longint;
	S, num, anterior: real;

begin
	S := 0;
	anterior := 0;
	num := 1;
	i := 2;
	sinal := -1;

	while abs(anterior - num) >= 0.00000001 do
	begin
		S := S + num;
		anterior := num;
		(* calcula proximo numero *)
		num := sinal * i/(i * i);
		i := i + 1;
		sinal := -sinal;
	end;
	(* soma ultimo numero *)
	S := S + num;
	writeln(S);
end.
