program divisivel_3_e_7;

var num: longint;

begin
	read(num);
	if (num mod 3 = 0) AND (num mod 7 = 0) then
		writeln('SIM')
	else
		writeln('NAO');	
end.
