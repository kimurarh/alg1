program temperatura;

var
	tempC, tempF: real;

begin
	read(tempF);
	tempC := (5*tempF - 160) / 9;
	writeln(tempC :0:2);
	if tempC >= 100 then
		writeln('gasoso')
	else if tempC > 0 then
		writeln('liquido')
	else
		writeln('solido');
end.
