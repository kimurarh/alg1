program vetores003;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
	tam: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure verifica_vetor_ordenado(var v: vetor; tam: longint);
var i: longint; ordenado: boolean;
begin
	i := 1;
	ordenado := true;
	while (i < tam) and (ordenado) do
	begin
		if v[i] > v[i + 1] then
			ordenado := false;
		i := i + 1;
	end;

	if ordenado then
		writeln('sim')
	else
		writeln('nao');
end;

procedure imprime_inverso(var v: vetor; tam: longint);
var i: longint;
begin
	for i := tam downto 1 do
		write(v[i], ' ');
	writeln;
end;

begin
	read(tam);
	if tam = 0 then
		writeln('vetor vazio')
	else
	begin
		le_vetor(v, tam);
		verifica_vetor_ordenado(v, tam);
		imprime_inverso(v, tam);
	end;
end.
