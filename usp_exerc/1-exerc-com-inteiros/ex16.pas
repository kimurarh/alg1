program ex16;

var
	num, baseDois, numBin: longint;

begin
	read(numBin);

	baseDois := 1;
	num := 0;

	while numBin <> 0 do
	begin
		num := num + (numBin mod 10) * baseDois;
		numBin := numBin div 10;
		baseDois := baseDois * 2;
	end;
	writeln(num);
end.
