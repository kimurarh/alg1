program ex08;

var
	pa, pb, xa, xb, pMenor, pMaior, xMenor, xMaior, cont: longint;

begin
	read(pa, pb, xa, xb);
	(* p: população, x: taxa de crescimento*)

	if pa > pb then
	begin
		pMaior := pa;
		xMaior := xa;
		pMenor := pb;
		xMenor := xb;
	end
	else
	begin
		pMaior := pb;
		xMaior := xb;
		pMenor := pa;
		xMenor := xa;
	end;

	(* Se a cidade menor tiver uma taxa de crescimento maior *)
	if xMenor > xMaior then
	begin
		cont := 0;
		(* incrementa a população das cidades *)
		while pMenor < pMaior do
		begin
			pMenor := pMenor + (pMenor * xMenor) div 100;
			pMaior := pMaior + (pMaior * xmaior) div 100;
			cont := cont + 1;
		end;
		writeln('sim em ', 2009 + cont);
	end
	else
		writeln('nao');
end.
