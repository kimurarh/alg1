program conta_digitos;

var
	a, cont: longint;

function num_digitos (n: longint): longint;
begin
	cont := 0; (* variável global *)
	while n <> 0 do
	begin
		n := n div 10;
		cont := cont + 1;
	end;
	num_digitos := cont;
end;

begin
	read(a);
	writeln(a, ' possui ', num_digitos(a), ' digitos.');
	writeln(a); (* não teve seu valor alterado *)
end.
