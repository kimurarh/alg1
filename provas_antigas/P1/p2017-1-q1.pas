program p2017_1_q1;

var
	n, dividendo: longint;
	soma: real;

begin
	read(n);

	soma := 0;
	dividendo := 1;

	while n >= 1 do
	begin
		soma := soma + dividendo / (n * n);
		dividendo := dividendo * 2;
		n := n - 1;
	end;
	writeln('S = ', soma);
end.
