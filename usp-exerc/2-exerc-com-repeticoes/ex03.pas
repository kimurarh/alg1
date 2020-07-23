program ex03;

var
	x, y, xMax, yMax, m, n: longint;
	valor, valorMax: real;

begin
	read(m, n);

	x := 0;
	y := 0;
	valor := 0;
	xMax := 0;
	yMax := 0;
	valorMax := 0;

	while x <= m do
	begin
		while y <= n do
		begin
			valor := x*y - x*x + y;
			if valor > valorMax then
			begin
				valorMax := valor;
				xMax := x;
				yMax := y;
			end;
			y := y + 1;
		end;
		x := x + 1;
		y := 0;		
	end;

	writeln('O valor da expressão é máximo para (', xMax, ', ', yMax, ') e é igual a ', valorMax :0:2);
end.
