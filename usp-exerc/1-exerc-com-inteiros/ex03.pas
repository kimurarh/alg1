program ex03;

var
	n, cont, i: integer;

begin
	writeln('Este programa irá imprimir os n primeiros inteiros positivos impares');
	writeln('Digite um valor positivo para n:');
	read(n);

	if n < 0 then
		writeln('numero invalido')
	else
	begin
		(* Inicializa-se cont = 1, pois 1 sempre será o primeiro número *)
		cont := 1;
		i := 2;
		write('1');		
		while cont < n do
		begin
			if i mod 2 <> 0 then
			begin
				cont := cont + 1;
				write(', ', i);
			end;
			i := i + 1;
		end;
		writeln('.');
	end;

end.
