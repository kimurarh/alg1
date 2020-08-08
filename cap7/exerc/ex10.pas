program ex10;

var
	x, num_mult, num_fat, sinal, xis: longint;
	den, termo, termo_anterior, funcao: real;

begin
	read(x);

	(* parametros iniciais *)
	num_mult := 5;
	den := 2;
	num_fat := 2;
	sinal := 1;
	xis := x;
	termo_anterior := sinal * num_mult * xis / den;
	termo := termo_anterior + 1; (* apenas para entrar no laço *)
	funcao := 0;

	while abs(termo - termo_anterior) >= 0.00000001 do
	begin
		funcao := funcao + termo;
		termo_anterior := termo;
		
		(* calcula novos parametros *)
		if num_fat mod 2 = 0 then
			num_mult := num_mult + 1
		else
			num_mult := num_mult + 5;
		xis := xis * x;
		sinal := -sinal;
		num_fat := num_fat + 1;	
		den := den * num_fat;

		termo := sinal * num_mult * xis / den;
	end;
	writeln(funcao);
end.
