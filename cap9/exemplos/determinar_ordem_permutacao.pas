program determinar_ordem_permutacao;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var n: integer;
    v: vetor;

procedure le_vetor(var v: vetor; n: integer);
var i: integer;
begin
    for i:= 1 to n do
        read(v[i]);
end;

function mdc(a, b: int64): int64;
begin
	while (a <> 0) and (b <> 0) do
	begin
		if a > b then
			a := a mod b
		else
			b := b mod a;
	end;
	if a = 0 then
		mdc := b
	else
		mdc := a;
end;

(* ordem - numero permutacoes necessarias para chegar na identidade (ID) *)

(* cada elemento P(i) = x do conjunto retorna a posicao i ciclicamente de cont em cont permutacoes *)
(* Pode-se concluir que a permutcao ID ocorrera na iteracao que eh o MMC entre o numero que provoca repeticao entre todos os indices *)
(* Nao existe algoritmo eficiente para calculo do MMC, mas existe para o MDC  (algoritmo de euclides)
relacao para achar o MMC:    MDC(a, b) = a * b / MMC(a, b)
*)

function ordem_permutacao(var v: vetor; n: integer): int64;
var mmc, cont: int64;
    p, i: integer;
begin
    mmc := 1;
    for i:= 1 to n do
    begin
        cont := 1;
        p := i;
        while (v[p] <> i) do
        begin
            cont := cont + 1;
            p := v[p];
        end;
        mmc := mmc * cont div mdc(mmc, cont);
    end;
    ordem_permutacao := mmc;
end;

(* programa principal *)
begin
    read(n);
    le_vetor(v, n);
    writeln(ordem_permutacao(v, n));
end.
