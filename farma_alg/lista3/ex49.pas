program distribuicao_salarios;

var
	num, faixa1, faixa2, faixa3, faixa4, total: real;

begin
	read(num);

	faixa1 := 0;
	faixa2 := 0;
	faixa3 := 0;
	faixa4 := 0;

	while num <> 0 do
	begin
		if num <= 3*450 then
			faixa1 := faixa1 + 1
		else if num <= 9*450 then
			faixa2 := faixa2 + 1
		else if num <= 20*450 then
			faixa3 := faixa3 + 1
		else
			faixa4 := faixa4 + 1;
		read(num);
	end;
	
	total := faixa1 + faixa2 + faixa3 + faixa4;

	(* transforma em percentual *)
	faixa1 := faixa1 / total * 100; 
	faixa2 := faixa2 / total * 100; 
	faixa3 := faixa3 / total * 100; 
	faixa4 := faixa4 / total * 100; 

	writeln(faixa1 :0:2);
	writeln(faixa2 :0:2);
	writeln(faixa3 :0:2);
	writeln(faixa4 :0:2);
end.
