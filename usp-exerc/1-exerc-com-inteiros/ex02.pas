program ex02;

var 
	n, cont, soma: integer;

begin
	writeln('Este programa irá calcular a soma dos n primeiros números inteiros positivos');
	writeln('Digite um valor positivo para n');

	read(n);
	cont := 1;
	soma := 0;

	if n < 0 then
		writeln(n, ' nao e um numero positivo')
	else
		if n = 0 then
			writeln('Soma = 0')
		else
		begin
			while cont <= n do
			begin
				soma := soma + cont;
				cont := cont + 1;			
			end;
			writeln('Soma = ', soma);
		end;
end.
