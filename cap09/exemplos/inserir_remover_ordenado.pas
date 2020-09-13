program inserir_remover_ordenado;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var v: vetor;
	tam, elemento, indice: longint;

procedure inserir (x: longint; var v: vetor; var tam: longint);
var i: longint;
begin
	v[0] := x; (* sentinela *)
	i := tam;
	while v[0] < v[i] do
	begin
		v[i+1] := v[i];
		i := i - 1;
	end;
	v[i+1] := x; (* insere na posicao i + 1 *)
	tam := tam + 1;
end;

procedure remover (indice: longint; var v: vetor; var tam: longint);
var i: longint;
begin
	if indice > tam then
		writeln('indice invalido')
	else
	begin
		for i := indice to tam - 1 do
			v[i] := v[i+1];
		tam := tam - 1;
	end;
end;

procedure ler_vetor (var v: vetor; var tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

procedure imprimir_vetor (var v: vetor; tam: longint);
var i: longint;
begin
	for i:= 1 to tam-1 do
		write(v[i], ' ');
	writeln(v[tam]);
end;

begin
	writeln('Informe o tamanho do vetor:');
	read(tam);
	writeln('Digite os ', tam, ' numeros do vetor:');
	ler_vetor(v, tam);
	writeln('Vetor digitado:');
	imprimir_vetor(v, tam);
	writeln('Informe o elemento que sera adicionado ao vetor:');
	read(elemento);
	inserir(elemento, v, tam);
	writeln('Vetor atualizado:');
	imprimir_vetor(v, tam);
	writeln('Informe o indice do elemento que devera ser removido do vetor:');
	read(indice);
	remover(indice, v, tam);
	writeln('Vetor atualizado:');
	imprimir_vetor(v, tam);
end.
