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
end.
