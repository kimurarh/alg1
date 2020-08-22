program vetores004;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v_leitura, v_contagem: vetor;
	n: longint;

procedure le_vetor(var v: vetor; var n: longint);
var i: longint;
begin
	for i := 1 to n do
		read(v[i]);
end;

procedure rm_vetor(posicao: integer; var v: vetor; var n: longint);
var i: longint;
begin
	for i := posicao to n - 1 do
		v[i] := v[i+1];
	n := n - 1;
end;

procedure imprime_num_distintos(var v_leitura, v_contagem: vetor; var n: longint);
var i: longint;
begin
	if n = 1 then
		writeln('a sequencia tem 1 numero distinto: ', v_leitura[1])
	else
	begin
		write('a sequencia tem ', n, ' numeros distintos: ');
		i := 1;
		for i := 1 to n do
		   write(v_leitura[i], ' ');
		writeln;
	end;

	for i := 1 to n do
		if v_contagem[i] = 1 then
			writeln(v_leitura[i], ' ocorre ', v_contagem[i], ' vez')
		else
			writeln(v_leitura[i], ' ocorre ', v_contagem[i], ' vezes');
end;

procedure conta_num_distintos(var v_leitura, v_contagem: vetor; var n: longint);
var i, j: longint;
begin
	i := 1;
	j := i + 1;
	while i <= n do
	begin
		v_contagem[i] := 1;
		while j <= n do
		begin
			if v_leitura[i] = v_leitura[j] then
			begin
				rm_vetor(j, v_leitura, n);
				v_contagem[i] := v_contagem[i] + 1;
			end
			else
				j := j + 1;
		end;
		i := i + 1;
		j := i + 1;
	end;

	imprime_num_distintos(v_leitura, v_contagem, n);
end;


begin
	read(n);
	if n = 0 then
		writeln('vetor vazio')
	else
	begin
		le_vetor(v_leitura, n);
		conta_num_distintos(v_leitura, v_contagem, n);
	end;
end.
