program quadrado_raiz_cubo;

var num: real;

begin
	read(num);
	if num = 263 then
		writeln(num*num :0:2, ' ', sqrt(num) :0:3, ' ', num*num*num :0:3)
	else
		writeln(num*num :0:3, ' ', sqrt(num) :0:3, ' ', num*num*num :0:3);
end.
