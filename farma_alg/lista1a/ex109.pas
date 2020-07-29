program verifica_intervalor;

var num: longint;

begin
	read(num);
	if (num > -15) AND (num < 30) then
		writeln(-num)
	else
		writeln(num);
end.
