program eh_primo;

var
	n, i, cont: longint;
	eh_primo: boolean;

begin
	read(n);
	cont := 0;
	eh_primo := true;
	i := 2;

	while eh_primo and (i <= n - 1) do
	begin
		if n mod i = 0 then
			eh_primo := false;
		i := i + 1;
	end;

	if eh_primo then
		writeln('SIM')
	else
		writeln('NAO');
end.
