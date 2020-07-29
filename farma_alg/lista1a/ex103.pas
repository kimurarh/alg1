program calcula_altura;

var cosseno, dist, hipotenusa: real;

begin
	read(cosseno, dist);
	if (cosseno <> 0) AND (dist > 0) then
	begin
		hipotenusa := dist / cosseno;
		writeln(sqrt(hipotenusa * hipotenusa - dist * dist) :0:3);
	end
	else
		writeln(0);
end.
