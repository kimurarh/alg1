program converte_para_binario;

var
	n, binario, multiplicador: longint;

begin
	writeln('Entre com um número:');
	read(n);
	binario := 0;
	multiplicador := 1;

	while n <> 0 do
	begin
		binario := binario + (n mod 2) * multiplicador;
	  	n := n div 2;	
		multiplicador := multiplicador * 10;
	end;
	writeln(binario);
end.
