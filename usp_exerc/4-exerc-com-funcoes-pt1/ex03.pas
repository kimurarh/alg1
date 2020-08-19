program verifica_sequencia_piramidal;

var
	n, parAtual, parAnterior, soma, segmento, falta_ler: longint;
	eh_alternante: boolean;

(* 	verifica a paridade de um bloco: 
	0 = todos pares, 1 = todos impares, -1 = paridades diferentes *)
procedure bloco(n: longint; var paridade: longint);
var i, num, resto: integer;
begin
	read(num);
	resto := num mod 2;
	paridade := 0;
	if resto = 1 then
		paridade := 1;

	i := 2;
	while (i <= n) and (paridade <> -1) do	
	begin
		read(num);
		(* verifica se tem paridade diferente *)
		if num mod 2 <> resto then
			paridade := -1;
		i := i + 1;
	end;
end;

begin
	write('Digite um numero inteiro positivo: ');
	read(n);
	writeln('Digite uma sequencia de ', n, ' numeros inteiros positivos:');

	eh_alternante := true;
	bloco(1, parAnterior); (* leitura do primeiro segmento *)
	soma := 1;
	segmento := 2;
	while soma <> n do
	begin
		falta_ler := n - soma;
		if falta_ler < segmento then
		begin
			bloco(falta_ler, parAtual);
			eh_alternante := false;
			segmento := falta_ler;
		end
		else
		begin
			bloco(segmento, parAtual);
			if parAtual + parAnterior <> 1 then
				eh_alternante := false;
			parAnterior := parAtual;
		end;
		soma := soma + segmento;
		segmento := segmento + 1;
	end;
	
	if eh_alternante then
		writeln('eh piramidal ', segmento - 1, '-alternante.')
	else
		writeln('nao eh piramidal alternante');
end.
