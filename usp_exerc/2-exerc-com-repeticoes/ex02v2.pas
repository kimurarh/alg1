program ex02v2;

var
	n, hip, lado1, lado2: longint;
	achou: boolean;

begin
	read(n);

	hip := 1;

	while hip <= n do
	begin
		achou := false;
		lado1 := 1;
		lado2 := 1;

		while (lado1 < hip) and (not achou) do
		begin
			lado2 := 1;
			while lado2 < hip do
			begin
				if lado1*lado1 + lado2*lado2 = hip*hip then
				begin
					writeln(hip, '^2 = ', lado1, '^2 + ', lado2, '^2');
					achou := true;
				end;
				lado2 := lado2 + 1;
			end;
			lado1 := lado1 + 1;
		end;
		
		hip := hip + 1;
	end;
end.
