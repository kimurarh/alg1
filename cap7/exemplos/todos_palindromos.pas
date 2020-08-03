program todos_palindromos;

const max = 1000;

var i, invertido, n: longint;

begin
	i := 1;
	while i <= max do (* laço que controla os numeros entre 1 e max *)
	begin
		invertido := 0;
		n := i;

		while n <> 0 do
		begin
			invertido := invertido*10 + n mod 10;
			n := n div 10;
		end;

		if invertido = i then
			writeln(i);

		i := i + 1;
	end;
end.
