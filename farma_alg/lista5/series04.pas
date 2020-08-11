program soma_serie;

var
	num, i: integer;
	soma: real;

begin
	num := 1;
	i := 1;
	soma := 0;	

	while i <= 10 do
	begin
		if i mod 2 <> 0 then
			soma := soma + num/(num + 1)
		else
			soma := soma + (num + 1)/num;
		num := num + 2;
		i := i + 1;
	end;
	writeln(soma :0:2);
end.
