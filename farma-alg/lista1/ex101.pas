program inverte_numero;

var num: integer;

begin
	read(num);
	write(num mod 10);
	write(num mod 100 div 10);
	writeln(num div 100);
end.
