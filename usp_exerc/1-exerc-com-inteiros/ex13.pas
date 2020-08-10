program ex13_v2;

var
	n, soma, i: longint;

begin
	read(n);

	soma := 1; (* qlqer numero é divisivel por 1 *)
	i := 2;

	while i < n do
	begin
		if n mod i = 0 then
			soma := soma + i;
		i := i + 1;
	end;

	if n = soma then
		writeln(n, ' é perfeito')
	else
		writeln(n, ' não é perfeito');
end.
