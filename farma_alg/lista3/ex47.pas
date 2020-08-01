program soma_50_quadrados;

var
	i, soma: longint;	

begin
	i := 1;
	soma := 0;

	while i <= 50 do
	begin
		soma := soma + i*i;
		i := i + 1;
	end;
	writeln(soma);
end.
