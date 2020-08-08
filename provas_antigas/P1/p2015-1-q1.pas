program p2015_1_q1;

var
	p_desconto: real;

begin
	write('Digite o preço com o deconto: ');
	read(p_desconto);

	if p_desconto / 0.6 >= 87 then
		writeln('O preço original para 40% é: ', p_desconto/0.6 :0:2)
	else
		writeln('O preco original para 30% é: ', p_desconto/0.7 :0:2);
		
end.
