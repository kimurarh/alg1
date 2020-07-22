program ex24;

var
	p, q, divisor: longint;
	subnumero: boolean;

begin
	writeln('Digite dois números inteiros positivos p e q, sendo que o número de digitos de p é menor ou igual ao número de digitos de q:');
	read(p, q);

	subnumero := false;

	(* calcula o 'divisor' *)
	divisor := 10;
	while p div divisor <> 0 do
		divisor := divisor * 10;

	while (q >= divisor) and (subnumero = false) do
	begin
		if q mod divisor = p then
		   subnumero := true;

		q := q div 10;   
	end;
	
	if subnumero = true then
		writeln('é subnumero')
	else
		writeln('não é subnumero');
end.
