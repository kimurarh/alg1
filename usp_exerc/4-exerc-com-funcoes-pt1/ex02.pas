program verifica_segmento;

var a, b, maior, menor: longint;
	eh_segmento: boolean;

function encaixa(a, b: longint): boolean;
begin
	encaixa := true;
	while (b <> 0) and encaixa do
	begin
		if a mod 10 = b mod 10 then
		begin
			a := a div 10;
			b := b div 10;
		end
		else
			encaixa := false;
	end;
end;

begin
	writeln('Digite dois numeros inteiros positivos: ');
	read(a, b);

	(* garante que a > b *)
	if a < b then
	begin
		a := b + a;
		b := a - b;
		a := a - b;
	end;

	maior := a;
	menor := b;

	eh_segmento := false;
	while (maior >= menor) and (eh_segmento = false) do
	begin
		if encaixa(maior, menor) then
			eh_segmento := true
		else
			maior := maior div 10;
	end;
	
	if eh_segmento then
		writeln(b, ' eh segmento de ', a)
	else
		writeln(b, ' nao eh segmento de ', a);
end.
