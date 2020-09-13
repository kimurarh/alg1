program ex02;

const MAX = 200;
type vetor = array [1..MAX] of real;
var	tam: longint;
	v: vetor;

(* garante que o numero lido esta no intervalor 0 <= n <= 200 *)
procedure le_num_intervalo(var num: longint);
begin
	repeat
		read(num);
	until (num >= 0) and (num <= 20)

end;

procedure ler_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure calcula_soma(var v: vetor; tam: longint);
var i: longint; somaNeg, somaPos: real;
begin
	somaPos := 0;
	somaNeg := 0; 

	for i := 1 to tam do
		if v[i] < 0 then
			somaNeg := somaNeg + v[i]
		else
			somaPos := somaPos + v[i];

	if somaNeg = 0 then
		writeln('divisao por zero')
	else
		writeln(abs(somaPos/somaNeg) :0:2);
end;


begin
	le_num_intervalo(tam);
	if tam = 0 then
		writeln('vetor vazio')
	else
	begin
		ler_vetor(v, tam);
		calcula_soma(v, tam);
	end;
end.
