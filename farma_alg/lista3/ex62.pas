program imprime_valores_negativos;

var
	num: real;

begin
	read(num);

	while num <> 0 do
	begin
		if num < 0 then
			writeln(num :0:2);
		read(num);
	end;
end.
