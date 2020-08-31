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

function verifica_restante(var v: vetor; tam_v, i: longint; var w: vetor; tam_w: longint): boolean;
var j: longint; igual: boolean;
begin
    j := 2;
    i := i + 1;
    igual := true;

    while (igual) and (j <> tam_w) do
    begin
        if v[i] = w[j] then
        begin
            j := j + 1;
            i := i + 1;
        end
        else
            igual := false;
    end;

    verifica_restante := igual; 
end;

function conta_ocorrencias(var v: vetor; tam_v: longint; var w: vetor; tam_w: longint): longint;
var cont, i: longint;
begin
	cont := 0;
	i := 1;

	while i <= tam_v do
	begin
		if (v[i] = w[1]) and (verifica_restante(v, tam_v, i, w, tam_w)) then
            cont := cont + 1;
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
