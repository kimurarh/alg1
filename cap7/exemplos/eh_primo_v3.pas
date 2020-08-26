program eh_primo_v3;

var
	n, i: longint;
	eh_primo: boolean;

begin
	(* Matematicamente, dado um número n, o maior divisor que ele pode ter é sqrt(n) *)
	read(n);

	if n mod 2 = 0 then
		if n = 2 then eh_primo := true
		else eh_primo := false
	else
	begin
		eh_primo := true;
		i := 3;

		while eh_primo and (i <= sqrt(n)) do
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
