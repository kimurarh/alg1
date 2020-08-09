program p2013_1_q1;

var
	i, j, k: integer;

begin
	read(i, j, k);

	if (j mod i = 0) and (k mod j = 0) then
		writeln(i + j + k)
	else
		if (j = i + 1) and (k = j + 1) then
			writeln(k, ' ', j, ' ', i)
		else
			writeln((i + j + k)/3:0:2);
end.
