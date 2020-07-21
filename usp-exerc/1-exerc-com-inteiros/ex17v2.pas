program ex17v2;

var
	num, binario, resto, potencia: longint;

begin
	read(num);
	binario := 0;
	potencia := 1;

	while num > 0 do
	begin
		resto := num mod 2;
		num := num div 2;
		binario := binario + (resto * potencia);
		potencia := potencia * 10;
	end;
	writeln(binario);
end.
