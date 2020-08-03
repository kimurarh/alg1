program ex13;

var
	num, primeiroDigito, segundoDigito, terceiroDigito, quartoDigito: longint;

begin
	read(num);

	primeiroDigito := num div 100;
	segundoDigito := (num mod 100) div 10;
	terceiroDigito := num mod 10;

	quartoDigito := (primeiroDigito + 3*segundoDigito + 5*terceiroDigito) mod 7;
	num := num*10 + quartoDigito;

	if num < 1000 then
		write(0);
	if num < 100 then
		write(0);

	writeln(num);
end.
