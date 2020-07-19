(*
EXERCÍCIO COMPLEMENTAR 23 - CÁLCULOS SIMPLES

*)

program calcula_desconto;

var valorProduto, novoValor: real;

begin
	read(valorProduto);
	novoValor := valorProduto * 0.91;
	writeln('Novo Valor: R$', novoValor :0:2);
	writeln('Valor do Desconto: R$', valorProduto - novoValor :0:2);

end.
