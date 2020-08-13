program equacao_segundo_grau;

var	a, b, c, numraizes: integer;
	x1, x2: real;

function menor_raiz(a, b, delta: real): real;
begin
	menor_raiz := (-b - sqrt(delta))/(2 * a);
end;

function maior_raiz(a, b, delta: real): real;
begin
	maior_raiz := (-b + sqrt(delta))/(2 * a);
end;

function calcula_delta (a, b, c: real): real;
begin
	calcula_delta := b*b - 4*a*c;
end;

function calcula_raiz (a, b, c: real; var x1, x2: real): integer;
var delta: real;
begin
	delta := calcula_delta(a, b, c);

	if delta >= 0 then
	begin
		x1 := menor_raiz(a, b, delta);
		x2 := maior_raiz(a, b, delta);
		if delta = 0 then
			calcula_raiz := 1
		else
			calcula_raiz := 2;
	end
	else
		calcula_raiz := 0;
end;


begin
	read(a, b, c);
	numraizes := calcula_raiz(a, b, c, x1, x2);

	if numraizes > 0 then
	begin
		writeln(x1 :0:2);
		if numraizes = 2 then
			writeln(x2 :0:2);
	end
	else
		writeln('raizes complexas');
end.
