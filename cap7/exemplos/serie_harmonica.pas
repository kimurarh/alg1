program serie_harmonica;

var	cont, den, n: longint;
	soma: real;

begin
	read(n);
	cont := 1;
	den := 1;
	soma := 0;

	while cont <= n do
	begin
		soma := soma + 1/den;
		cont := cont + 1;
		den := cont;	
	end;
	writeln(soma :0:5);
end.
