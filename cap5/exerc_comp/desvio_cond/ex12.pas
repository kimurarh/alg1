(*
EXERCÍCIO COMPLEMENTAR 12 - DESVIOS CONDICIONAIS

A prefeitura de Contagem abriu uma linha de crédito para os funcionários estatutários. O valor máximo da prestação não poderá ultrapassar 30% do salário bruto. Faça um programa em Pascal que permita entrar com o salário bruto e o valor da prestação, e informar se o empréstimo pode ou não ser concedido.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|500<br>200        |nao           |
|1000.50<br>250.10 |sim           |
|1000<br>300       |sim           |

*)

program verifica_emprestimo;

var salario, emprestimo: real;

begin
	read(salario, emprestimo);
	if emprestimo <= salario * 0.3 then
		writeln('sim')
	else
		writeln('nao')
end.
