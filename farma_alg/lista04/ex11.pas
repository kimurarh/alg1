program eh_primo;

var
	n, i: longint;
	primo: boolean;

begin
	read(n);
	
	(* Só 2 é par e primo *)
	if n mod 2 = 0 then
		if n = 2 then
			primo := true
		else
			primo := false
	else
	begin
		primo := true;
		i := 3; (* já verificamos que não é divisivel por 2 *)

		while primo and (i < n) do
		begin
			if n mod i = 0 then
				primo := false;
			i := i + 2;
		end
	end;

	if primo then
		writeln('SIM')
	else
		writeln('NAO');
end.
