program p2016_1_q1;

var
	meses, mesAtual, anos: integer;
	saldo: real;	

begin
	(* no mes ZERO (abril) foi depositado apenas 50 reais *)
	meses := 1;
	mesAtual := 5;
	saldo := 50;

	while saldo <= 20000 do
	begin
		saldo := saldo * 1.005 + 50;

		if mesAtual = 5 then (* mes do aniversario *)
			saldo := saldo + 200
		else 
			if mesAtual = 12 then (* natal *)
				saldo := saldo + 300;

		meses := meses + 1;
		mesAtual := mesAtual + 1;

		if mesAtual > 12 then
			mesAtual := 1;
	end;

	anos := meses div 12;
	meses := meses mod 12;

	writeln('Saldo: ', saldo:0:2, ' obtido em ', anos, ' anos e ', meses, ' meses');
end.
