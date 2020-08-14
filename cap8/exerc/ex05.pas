program calcula_tangente;
var angulo: real;

procedure proximo_termo(var sinal, num, den, cont: real);
begin
	sinal := -sinal;
	num := num * angulo * angulo;
	den := den * (cont + 1) * (cont + 2);
	cont := cont + 2;
end;

function seno(angulo: real): real;
var sinal, cont, num, den: real;
begin
	seno := 0;
	num := angulo;
	den := 1;
	sinal := 1;
	cont := 1;
	while num/den >= 0.00000001 do
	begin
		seno := seno + sinal * num / den;
		proximo_termo(sinal, num, den, cont);
	end;
end;

function cosseno(angulo: real): real;
var sinal, cont, num, den: real;
begin
	cosseno := 1;
	num := angulo * angulo;
	den := 2;
	sinal := -1;
	cont := 2;
	while num/den >= 0.00000001 do
	begin
		cosseno := cosseno + sinal * num / den;
		proximo_termo(sinal, num, den, cont);
	end;
end;

function tangente(angulo: real): real;
begin
	tangente := seno(angulo) / cosseno(angulo);
end;

begin
	read(angulo);
	writeln(tangente(angulo));
end.
