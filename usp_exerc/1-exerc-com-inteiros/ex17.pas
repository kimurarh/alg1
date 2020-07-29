program ex17;

var
	num, mult, binario, unidade: longint;

begin
	read(num);
	mult := 1;
	binario := 0;

	while num > 0 do
	begin
		unidade := num mod 2;
		binario := binario + unidade * mult;
		num := num div 2;
		mult := mult * 10;
	end;
	writeln(binario);
end.
