program divisivel_cinco;

var n: longint;

begin
	read(n);
	if n mod 5 = 0 then
		writeln('SIM')
	else
		writeln('NAO');
end.
