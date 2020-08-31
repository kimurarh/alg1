program ex03_subsequencias;

const MAX = 100;
type vetor = array [1..MAX] of longint;
var v: vetor;
	n, posicao, tam_subseq: longint;

procedure ler_vetor(var v: vetor; tam: longint);
var i: longint;
begin
	for i := 1 to tam do
		read(v[i]);
end;

(* verifica se o restante da subsequencia eh igual *)
function verifica_restante(var v: vetor; n, tam_subseq, i, j: longint): boolean;
var cont: longint;
begin
	cont := 0;

	while (v[i] = v[j]) and (cont <= tam_subseq) do
	begin
		i := i + 1;
		j := j + 1;
		cont := cont + 1;
	end;
    
    verifica_restante := false;    
	if cont = tam_subseq then
		verifica_restante := true;
end;

(* recebe uma subseq 'v' de tamanho 'n' e procura por subseqs iguais de tamanho 'tam_seq' 
   retorna zero se nao encontrou subseq iguais ou devolve a posicao do inicio da primeira subseq que encontrou	*)
function tem_subseq_iguais(var v: vetor; n, tam_subseq: longint): longint;
var i, j, posicao_achou: longint;
begin
	posicao_achou := 0;	
	i := 1;

    while (i <= n - tam_subseq) and (posicao_achou = 0) do
    begin
        j := i + tam_subseq;
        repeat 
			if (v[i] = v[j]) and verifica_restante(v, n, tam_subseq, i, j) then
                posicao_achou := i;
            j := j + 1;
        until (j > n - tam_subseq + 1) or (posicao_achou <> 0);
        i := i + 1;
    end;

(*
	while (i <= falta_comparar) and (posicao_achou = 0) do
	begin
		j := i + tam_subseq;
		while (j <= falta_comparar + 1) and (posicao_achou = 0) do
		begin
			if (v[i] = v[j]) and verifica_restante(v, n, tam_subseq, i, j) then
					posicao_achou := i;
			j := j + 1;
		end;
		i := i + 1;
	end;
*)
	tem_subseq_iguais := posicao_achou;	
end;

(* programa principal *)
begin
	read(n);
	ler_vetor(v, n);
	posicao := 0;
	tam_subseq := n div 2; (* maior valor possivel *)
	while (posicao = 0) and (tam_subseq >= 2) do
	begin
		posicao := tem_subseq_iguais(v, n, tam_subseq);
		tam_subseq := tam_subseq - 1;
	end;

	if posicao > 0 then
		writeln(posicao, ' ', tam_subseq + 1)
	else
		writeln('nenhuma');
end.
