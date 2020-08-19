program verifica_permutacao;

var a, b, d: longint;
	eh_permutacao: boolean;

function contadigitos(n, d: longint): longint;
var cont: longint;
begin
	cont := 0;
	while n <> 0 do
	begin
		if n mod 10 = d then
			cont := cont + 1;
		n := n div 10;
	end;
	contadigitos := cont;
end;

begin
	write('Digite dois digitos: ');
	read(a, b);

	d := 1;
	eh_permutacao := true;

	while (d <= 9) and (eh_permutacao) do
	begin
		if contadigitos(a, d) <> contadigitos(b, d) then
			eh_permutacao := false;
		d := d + 1;
	end;

	if eh_permutacao then
		writeln(a, ' eh permutacao de ', b)
	else
		writeln(a, ' nao eh permutacao de ', b);
end.
