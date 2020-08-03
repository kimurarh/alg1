program ex16;

var
	a, b, soma, cont: longint;

begin
	read(a, b);

	while a = b do
		read(a, b);
	
	soma := 0;

	if a < b then
	begin
		while a <= b do
		begin
			if a mod 2 <> 0 then
				soma := soma + a;
			a := a + 1;
		end;
		writeln(soma);
	end
	else
	begin
		cont := 0;
		while b <= a do
		begin
			if b mod 3 = 0 then
			begin
				soma := soma + b;
				cont := cont + 1;
			end;
			b := b + 1;
		end;
		writeln(soma / cont :0:2);
	end;
end.
