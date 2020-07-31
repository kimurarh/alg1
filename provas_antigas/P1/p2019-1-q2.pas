program p2019_q2;

var
	x, y, reta: real;

begin
	read(x, y);

	reta := 2*x + y;

	if (reta <> 4) and (x <> 0) and (y <> 0) then (* não está encima da reta e dos eixos x e y *)
		if x > 0 then (* está à direita do eixo y *)
			if y > 0 then (* está acima do eixo x *)
				if reta < 4 then
					writeln('(', x:0:2, ', ', y:0:2, ') percente à regiao B')
				else
					writeln('Não está em nenhuma das regioes')
			else (* está abaixo do eixo x *)
				if reta > 4 then
					writeln('(', x:0:2, ', ', y:0:2, ') percente à regiao C')
				else
					writeln('Não está em nenhuma das regioes')
		else (* está à esquerda do eixo y *)
			if reta > 4	then
				writeln('(', x:0:2, ', ', y:0:2, ') percente à regiao A')
			else
				writeln('Não está em nenhuma das regioes')
	else (* está encima da reta ou de um dos eixos *)
		writeln('Não está em nenhuma das regioes');
end.
