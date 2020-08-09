program p2012_2_q2;

var
	i: integer;
	den, soma: real;

begin
	soma := 0;
	i := 1;
	den := 1;

	while i <= 100 do
	begin
		soma := soma + 1/den;
		den := den * 2;
		i := i + 1;
	end;
	writeln(soma);
end.
