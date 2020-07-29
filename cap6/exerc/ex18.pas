program ex18;

var
	num, numDecimal, ultimoDigito, baseDois: longint;
	binario: boolean;

begin
	read(num);
	binario := true;
	numDecimal := 0;
	baseDois := 1;

	(* Verifica do ultimo ao primeiro digito se é 1 ou 0 *)
	(* vai calculando o valor em decimal e para caso verificar que não é numero binario *)
	while (num <> 0) and (binario = true) do
	begin
		ultimoDigito := num mod 10;
		if (ultimoDigito = 0) or (ultimoDigito = 1) then
			numDecimal := numDecimal + ultimoDigito * baseDois
		else
			binario := false;

		baseDois := baseDois * 2;
		num := num div 10;
	end;
	
	if binario then
		writeln(numDecimal)	
	else
		writeln('nao eh binario');


end.
