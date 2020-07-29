program ex06;

var
	num, divisor, numDivisores, multiplicidade, i: longint;

begin
	writeln('Digite um número inteiro positivo:');
	read(num);
	writeln('A decomposição de ', num, ' em números primos é:');

	i := 1;
	divisor := 2;
	numDivisores := 0;
	multiplicidade := 0;

	while num <> 1 do
	begin
		(* Calcula o número de divisores do 'divisor' *)
		while i <= divisor do
		begin
			if divisor mod i = 0 then
				numDivisores := numDivisores + 1;	
			i := i + 1;
		end;

		(* Apenas divide o número, se o divisor for primo e o resto da divisão for zero *)
		if (numDivisores = 2) then
			while (num mod divisor = 0) do
			begin
				num := num div divisor;
				multiplicidade := multiplicidade + 1;
			end;

		if multiplicidade > 0 then
			writeln(divisor, ' multiplicidade: ', multiplicidade, ' ');
		
		(* Reseta valores para a próxima iteração *)
		numDivisores := 0;
		i := 1;
		divisor := divisor + 1;
		multiplicidade := 0;
	end;
end.
