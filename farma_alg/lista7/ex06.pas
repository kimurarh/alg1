program vetores006;

const MAX = 200;
type vetor = array [1..MAX] of real;
var codigo, tam: integer;
	num: real;
	v: vetor;

procedure le_codigo(var codigo: integer);
begin
	repeat
		read(codigo);
	until (codigo = 0) or (codigo = 1) or (codigo = 2);
end;

procedure imprime_vetor(var v: vetor; tam: integer);
var i: integer;
begin
	if tam = 0 then
		writeln('vazio')
	else
	begin
		for i := 1 to tam do
			write(v[i]:0:1, ' ');
		writeln;
	end;
end;

function busca_binaria(num: real; var v: vetor; tam: integer): integer;
var inicio, fim, meio: integer;
begin
	inicio := 1;
	fim := tam;
	meio := (inicio + fim) div 2;
	while (v[meio] <> num) and (fim >= inicio) do
	begin
		if v[meio] > num then
			fim := meio - 1
		else
			inicio := meio + 1;
		meio := (inicio + fim) div 2;
	end;

	if inicio <= fim then
		busca_binaria := meio
	else
		busca_binaria := 0;
end;

procedure add_vetor(num: real; var v: vetor; var tam: integer);
var i: integer;
begin
	if tam = 200 then (* ultrapassou quantidade max *)
		writeln('erro')
	else
	begin
		i := tam;
		while (num < v[i]) and (i > 0) do
		begin
			v[i+1] := v[i];
			i := i - 1;
		end;
		v[i+1] := num;
		tam := tam + 1;
		imprime_vetor(v, tam);
	end;
end;

procedure rm_vetor(num: real; var v: vetor; var tam: integer);
var i, posicao: integer;
begin
	posicao := busca_binaria(num, v, tam);

	if posicao = 0 then
		writeln('erro') (* numero nao existe no vetor *)
	else
	begin
		for i := posicao to tam - 1 do
			v[i] := v[i+1];
		tam := tam - 1;
		imprime_vetor(v, tam);
	end;
end;

begin
	tam := 0;
	le_codigo(codigo);
	while codigo <> 0 do
	begin
		read(num);
		if codigo = 1 then
			add_vetor(num, v, tam)
		else
			rm_vetor(num, v, tam);
		le_codigo(codigo);
	end;
	imprime_vetor(v, tam);
end.
