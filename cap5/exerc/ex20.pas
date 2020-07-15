(*
EXERCÍCIO 20

Faça um programa em Pascal que leia um número n > 0 do teclado e imprima a tabuada de n de 1 até 10.

|Exemplo de Entrada|Saída Esperada|
|:----------------:|:------------:|
|5                 |5 x 1 = 5<br>5 x 2 = 10<br>5 x 3 = 15<br>5 x 4 = 20<br>5 x 5 = 25<br>5 x 6 = 30<br>5 x 7 = 35<br>5 x 8 = 40<br>5 x 9 = 45<br>5 x 10 = 50|

*)

program tabuada;

var n, cont: integer;

begin
	read(n);
	cont := 1;
	while cont <= 10 do
	begin
		writeln(n, ' x ', cont, ' = ', n * cont);
		cont := cont + 1
	end;
end.
