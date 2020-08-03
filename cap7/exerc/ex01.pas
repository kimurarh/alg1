program ex01;

var
	n, cont, num: integer;

begin
	read(n);

	num := 1;
	cont := 0;

	while cont < n do
	begin
		write(num, ' ');
	  	num := num * 2;	
		cont := cont + 1;
	end;
	writeln;
end.
