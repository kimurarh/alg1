program eh_primo_v2;

var
	n, i: longint;
	eh_primo: boolean;

begin
	read(n);

	(* existe apenas um número par que é primo (o 2) *)
	if n mod 2 = 0 then
		if n = 2 then eh_primo := true
		else eh_primo := false
	else
	begin
		eh_primo := true;
		i := 3;

		while eh_primo and (i <= n - 1) do
		begin
			if n mod i = 0 then
				eh_primo := false;
			i := i + 2;
		end;
	end;

	if eh_primo then
		writeln('SIM')
	else
		writeln('NAO');
end.
