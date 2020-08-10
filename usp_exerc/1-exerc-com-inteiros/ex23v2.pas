program ex23v2;

var
	num, copia, numInv: longint;

begin
	read(num);
	
	copia := num;
	numInv := 0;

	(* inverte o numero *)
	while copia <> 0 do
	begin
		numInv := numInv * 10 + copia mod 10;
		copia := copia div 10;
	end;

	if numInv = num then
		writeln(num, ' é palíndrome')
	else
		writeln(num, ' não é palíndrome');
end.
