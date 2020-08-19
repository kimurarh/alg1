program exemplo1;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
	n: longint;

procedure ler (var v: vetor; var n: longint);
var i: longint;
begin
	read(n);
	for i := 1 to n do
		read(v[i]);
end;

function acha_posicao_menor (var v: vetor; n: longint): longint;
var i, ind_menor: longint;
begin
	ind_menor := 1;
	for i := 2 to n do
		if v[i] < v[ind_menor] then
			ind_menor := i;
	acha_posicao_menor := ind_menor;
end;

function acha_menor (var v: vetor; n: longint): longint;
var i, menor: longint;
begin
	menor := v[1];
	for i := 2 to n do
		if v[i] < menor then
			menor := v[i];
	acha_menor := menor;
end;

procedure imprimir (var v: vetor; n: longint);
var i: longint;
begin
	for i := n downto 1 do
		write(v[i], ' ');
	writeln;
end;


begin
	ler(v, n);
	imprimir(v, n);
	writeln('o menor elemento eh: ', acha_menor(v, n));
	writeln('a posição do menor elemento eh: ', acha_posicao_menor(v, n));
end.
