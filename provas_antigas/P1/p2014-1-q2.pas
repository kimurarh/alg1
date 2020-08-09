program p2014_1_q2;

var
	soma, num, anterior, den: real;

begin
	(* inicialização variáveis *)
	soma := 1.5; (* dois primeiros termos *) 
	num := 1/2;
	anterior := 1;
	den := 2;

	while anterior - num >= 0.00001 do
	begin
		anterior := num;
		den := den * 2;
		num := 1/den;
		soma := soma + num;
	end;
	writeln(soma);
end.
