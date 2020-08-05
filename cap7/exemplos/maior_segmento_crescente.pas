program maior_segmento_crescente;

var
	n, tamanho, maiorTamanho, nAnterior: longint;

begin
	read(n);
	tamanho := 0;
	maiorTamanho := tamanho;
	
	if n <> 0 then
	begin
		nAnterior := n;
		tamanho := tamanho + 1;
		read(n);

		while n <> 0 do
		begin
			if n > nAnterior then (* sequencia crescente *)
				tamanho := tamanho + 1
			else (* acabou sequencia *)
			begin
				if tamanho > maiorTamanho then
					maiorTamanho := tamanho;
				tamanho := 1;
			end;
			nAnterior := n;
			read(n);
		end;
		(* Verifica o ultimo segmento *)
		if tamanho > maiorTamanho then
			maiorTamanho := tamanho;
		writeln(maiorTamanho);
	end;
end.
