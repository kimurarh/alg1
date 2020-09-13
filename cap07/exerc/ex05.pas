program ex05;

var
	m, n, x, y, xMax, yMax, max, expressao: longint;

begin
	read(m, n);

	x := 1;
	y := 1;
	max := 0;

	while x <= m do
	begin
		while y <= n do
		begin
			expressao := x * y - x * x + y;
			if expressao > max then
			begin
				max := expressao;
				xMax := x;
				yMax := y;
			end;
			y := y + 1;
		end;
		y := 1;
		x := x + 1;
	end;
	writeln(xMax, ' ', yMax, ' ', max);
end.
