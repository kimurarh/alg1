(*
EXERCÍCIO COMPLEMENTAR 31 - CÁLCULOS SIMPLES

*)

program valores_energia;

var salario, qwatts, valorQwatt: real;

begin
	read(salario, qwatts);
	valorQwatt := salario / 700;
	writeln('valor do quilotwatt: ', valorQwatt :0:2);
	writeln('valor pago: ', qwatts * valorQwatt :0:2);

end.
