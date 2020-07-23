program ex02;

var
	n, cat1, cat2, hip: longint;
	eHipotenusa: boolean;

begin
	read(n);

	hip := 1;
	cat1 := 1;
	cat2 := 1;
	eHipotenusa := false;

	while hip <= n do
	begin
		while cat1 < n do
		begin
			while cat2 < n do
			begin
				if (cat1*cat1 + cat2*cat2 = hip*hip) and (eHipotenusa = false) then
				begin
					writeln(hip, ' é comprimento de hipotenusa de um triangulo retangulo');
					eHipotenusa := true;
				end;
				cat2 := cat2 + 1;
			end;
			cat1 := cat1 + 1;
			cat2 := 1;
		end;
		hip := hip + 1;
		cat1 := 1;
		cat2 := 1;
		eHipotenusa := false;
	end;
end.
