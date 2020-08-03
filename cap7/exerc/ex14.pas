program ex14;

var
	numBin, potDois, digito, num: longint;

begin
	read(numBin);

	potDois := 1;
	num := 0;

	while numBin <> 0 do
	begin
		digito := numBin mod 10;
		if digito = 1 then
			num := num + potDois;
		potDois := potDois * 2;
		numBin := numBin div 10;
	end;
	writeln(num);
end.
