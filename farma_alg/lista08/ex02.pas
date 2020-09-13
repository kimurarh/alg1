program ex02_ocorrencias;

const MAX = 100;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
	n, m: longint;


procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

function conta_ocorrencias(var v: vetor; tam_v: longint; var w: vetor; tam_w: longint): longint;
var cont, i, j: longint; elemento_igual: boolean;
begin
	cont := 0;
	i := 1;

	while i <= tam_v do
	begin
		if v[i] = w[1] then
		begin
			elemento_igual := true;
			j := 2;
			i := i + 1;
			while (elemento_igual) and (j <> tam_w) do
			begin
				if v[i] = w[j] then
				begin
					j := j + 1;
					i := i + 1;
				end
				else
					elemento_igual := false;
			end;

			if elemento_igual then
				cont := cont + 1;
		end
		else
			i := i + 1;
	end;	

	conta_ocorrencias := cont;
end;

begin
	read(n, m); (* m < n *)
	le_vetor(v, n);
	le_vetor(w, m);
	writeln(conta_ocorrencias(v, n, w, m));
end.
