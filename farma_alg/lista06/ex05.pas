program calcula_tangente;

const ITERACOES = 7;
var angulo, tg: real;

function serie_taylor(angulo, num: real; den, cont: longint): real;
var soma: real; sinal, i: integer;
begin
	soma := 0;
	sinal := 1;
	for i := 1 to ITERACOES do
	begin
		soma := soma + sinal * num / den;
		num := num * angulo * angulo;
		sinal := -sinal;
		den := den * (cont + 1) * (cont + 2);
		cont := cont + 2;
	end;
	serie_taylor := soma;
end;

function seno(angulo: real): real;
var num: real; den, cont: longint; 
begin
	(* valores do primeiro termo *)
	num := angulo;
	den := 1;
	cont := 1;
	seno := serie_taylor(angulo, num, den, cont);
end;

function cosseno(angulo: real): real;
var num: real; den, cont: longint;
begin
	(* valores do primeiro termo *)
	num := 1;
	den := 1;
	cont := 0;
	cosseno := serie_taylor(angulo, num, den, cont);
end;

function existe_tangente(angulo: real; var tg: real): boolean;
var equivalente: real;
begin
	existe_tangente := true;

	equivalente := angulo;
	while equivalente > 2*pi do
		equivalente := equivalente - pi;

	if equivalente = pi/2 then
		existe_tangente := false
	else
		tg := seno(angulo) / cosseno(angulo);
end;

begin
	read(angulo);
	if existe_tangente(angulo, tg) then
		writeln(tg:0:5)
	else
		writeln('nao existe tangente de ', angulo:0:5);
end.
