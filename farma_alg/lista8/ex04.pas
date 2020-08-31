program ex04_substituicao;

const MAX = 100;
type vetor = array [1..MAX] of longint;
var v1, v2, v3: vetor;
	tv1, tv2, tv3, pos_ini, pos_fim: longint;

procedure ler_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
	tam := 0;
	read(num);
	while num <> 0 do
	begin
		tam := tam + 1;
		v[tam] := num;
		read(num);
	end;
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	if tam = 0 then
		write('vazia')
	else
		for i:= 1 to tam do
			write(v[i], ' ');
	writeln;
end;

function verifica_restante(var v2: vetor; tv2: longint; var v1: vetor; tv1: longint; i: longint): boolean;
var j, cont: longint; encontrou: boolean;
begin
	if i > tv1 - tv2 then (* posicao onde nao eh possivel que contre a 'palavra' inteira *)
        verifica_restante := false
    else
    begin
		encontrou := true;
		j := 1;
		cont := 1;
		while encontrou and (cont <= tv2) do
		begin
			if v1[i] <> v2[j] then
			   encontrou := false;	
			i := i + 1;
			j := j + 1;
			cont := cont + 1;
		end;
		verifica_restante := encontrou;
    end;
end;

function ocorre(var v2: vetor; tv2: longint; var v1: vetor; tv1: longint; var pos_ini, pos_fim: longint): boolean;
var i: longint;
begin
	v1[tv1 + 1] := v2[1]; (* sentinela *)
	i := 0;
	ocorre := false;

	while (i <= tv1 - tv2) and (not ocorre) do
	begin
		(* incrementa ate  achar um elemento igual a v2[1] *)
		while v1[i] <> v2[1] do 
			i := i + 1;

		if verifica_restante(v2, tv2, v1, tv1, i) then
		begin
			pos_ini := i;
			pos_fim := i + tv2 - 1;
			ocorre := true;
		end;
		i := i + 1;
	end;
end;

(* ajusta o tamanho do vetor para caber a 'palavra' *)
procedure ajustar_vetor(var v: vetor; var tv1: longint; tv2, tv3 : longint; var pos_fim: longint);
var ajuste, i: longint;
begin
	ajuste := tv3 - tv2;

	if ajuste < 0 then
		for i := pos_fim + 1 to tv1 do
			v[i + ajuste] := v[i]
	else
		for i := tv1 downto pos_fim + 1 do
			v[i + ajuste] := v[i];

	tv1 := tv1 + ajuste;
	pos_fim := pos_fim + ajuste;
end;

procedure substitui(var v3: vetor; tv3: longint; var v1: vetor; var tv1, pos_ini, pos_fim: longint);
var i, j: longint;
begin
	(* se a 'palavra' nova for maior ou menor que a antiga *)
	if tv3 <> pos_fim - pos_ini then
		ajustar_vetor(v1, tv1, tv2, tv3, pos_fim);

	j := 1;
	for i := pos_ini to pos_fim do
	begin
		v1[i] := v3[j];
		j := j + 1;
	end;
end;

begin
	ler_vetor(v1, tv1);
	ler_vetor(v2, tv2);
	ler_vetor(v3, tv3);

	if ocorre(v2, tv2, v1, tv1, pos_ini, pos_fim) then
	begin
		substitui(v3, tv3, v1, tv1, pos_ini, pos_fim);
	end;
	imprime_vetor(v1, tv1);
end.
