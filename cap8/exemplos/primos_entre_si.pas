program primos_entre_si;

var i, j: integer;

function mdc (a, b: integer): integer; (* calculo do mdc pelo algoritmo de euclides *)
var resto: integer;
begin
	resto := a mod b;
	while resto <> 0 do
	begin
		a := b;
		b := resto;
		resto := a mod b;
	end;
	mdc := b;
end;

function primos_entre_si (a, b: integer): boolean;
begin
	primos_entre_si := false;
	if (a <> 0) and (b <> 0) then
	begin
		if mdc(a, b) = 1 then
			primos_entre_si := true;
	end;

end;

begin
	i := 2;
	while i <= 100 do
	begin
		j := i;
		while j <= 100 do
		begin
			if primos_entre_si(i, j) then
				writeln(i, ' ', j);
			j := j + 1;
		end;
		i := i + 1;
	end;
end.
