program p2013_2_q2;

var
	soma, num, den, termo: real;
	i: integer;

begin
	soma := 1;
	num := 1;
	den := 2;
	termo := num/den;
	i := 2;

	while (termo >= 0.000000000000001) or (i >= 20) do
	begin
		soma := soma + termo;

		(* calculo do proximo termo *)
		num := num + 1;
		den := den * (num + 1);
		termo := num/den;

		i := i + 1;
	end;
	writeln(soma);
end.
