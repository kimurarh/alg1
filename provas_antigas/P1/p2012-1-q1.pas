program p2012_1_q1;

var
	S: real;
	num: integer;

begin
	S := 0;
	num := 1;

	while num <= 100 do
	begin
		S := S + num / (101 - num);
		num := num + 1;
	end;
	writeln('O valor de S = ', S);
end.
