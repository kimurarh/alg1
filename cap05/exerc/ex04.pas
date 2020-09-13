(* 
EXERCÍCIO 4

Faça um programa que some duas horas. A entrada deve ser feuta lendo-se dois inteiros por linha, em duas linhas, e a saída deve ser feita no formato especificado no exemplo abaixo:

|Exemplo de entrada|Saída esperada      |
|:----------------:|:------------------:|
|12 52<br>7 13     |12:52 + 7:13 = 20:05|
|20 15<br>1 45     |20:15 + 1:45 = 22:00|
|0 0<br>8 35       |0:0 + 8:35 = 8:35   |

*)

program soma_horas;

var
	h1, h2, m1, m2, hr, mr: integer;

begin
	readln(h1, m1);
	read(h2, m2);

	mr := m1 + m2;
	hr := h1 + h2;

	if mr >= 60 then
	begin
		mr := mr - 60;
		hr := hr + 1;
	end;
	
	if hr >= 24 then
		hr := hr - 24;
	
	write(h1, ':', m1, ' + ', h2, ':', m2, ' = ', hr, ':');
	if mr < 10 then
		writeln('0', mr)
	else
		writeln(mr);
end.
