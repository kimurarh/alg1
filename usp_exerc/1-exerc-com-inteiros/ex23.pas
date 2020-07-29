program ex23;

var
	n, tamanho, primeiroDigito, ultimoDigito: longint;
	palindrome: boolean;

begin
	writeln('Digite um número com pelos menos dois algarismos:');
	read(n);

	palindrome := true;
	tamanho := 10;
	(* determina o tamanho do número n *)
	while n div tamanho > 9 do
		tamanho := tamanho * 10;

	while (n > 9) and (palindrome = true) do 
	begin
		primeiroDigito := n div tamanho;
		ultimoDigito := n mod 10;

		if primeiroDigito <> ultimoDigito then
			palindrome := false;

		(* retira o primeiro e ultimos digitos atuais do numero *)
		n := (n mod tamanho) div 10;
		(* reduz a variavel 'tamanho' para o novo tamanho *)
		tamanho := tamanho div 100;
	end;
	
	if palindrome = true then
		writeln('é palindrome')
	else
		writeln('não é palindrome');
end.
