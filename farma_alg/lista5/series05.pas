program soma_infinita;

var
	num, den, i: integer;
	soma: real;

begin
	num := 1;
	den := 3;
	soma := 0;
	i := 1;

	while i <= 10 do
	begin
		soma := soma + num/den;
		(* inverte numerador e denominador *)
		num := num + den;
		den := num - den;
		num := num - den;
		(* não precisa multiplicar por 2 -> vai dar na mesma *)
		i := i + 1;
	end;
	writeln(soma :0:2);
end.
