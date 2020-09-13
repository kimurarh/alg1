(*
EXERCÍCIO COMPLEMENTAR 16 - CÁLCULOS SIMPLES

Certo dia o professor de Johann Friederich Carl Gauss (aos 10 anos de idade) mandou que os alunos somassem os números de 1 a 100. Imediatamente Gauss achou a resposta – 5050 – aparentemente sem a soma de um em um. Supõe-se que já aı́, Gauss, houvesse descoberto a fórmula de uma soma de uma progressão aritmética. <br>
Faça um programa em Pascal que realize a soma de uma P.A. de n termos, dado o primeiro termo a1 e o último termo an. A impressão do resultado deve ser formatada com duas casas na direita.

|Exemplo de Entrada |Saída Esperada|
|:-----------------:|:------------:|
|  n  |  a1  |  an  |      soma    |
| 100 |  1   | 100  |     5050.00  |
|  10 |  1   |  10  |     55.00    |
|  50 |  30  | 100  |     3250.00  |

*)

program prog_aritm;

var n, an: integer;
	soma, a1: real;

begin
	writeln('Este programa irá realizar a soma de um P.A. de n termos dado o primeiro termo a1 e o último termo an');
	writeln('Digite os valores de n, a1 e an respectivamente:');
	read(n, a1, an);
	soma := (a1 + an)*n/2;

	(*
	Utilizando While

	razao := (an - a1)/(n - 1);

	while a1 <= an do
	begin
		soma := soma + a1;
		a1 := a1 + razao;
	end;
	*)

	writeln(soma:0:2);

end.
