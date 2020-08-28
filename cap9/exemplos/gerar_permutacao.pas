program gerar_permutacao;

(* gerar randomicamente um vetor que represente uma permutacao valida *)

const MAX = 200;
type vetor = array [1..MAX] of longint;
var n: longint;
    v: vetor;

procedure imprime_vetor(var v: vetor; n: longint);
var i: longint;
begin
    for i:= 1 to n do
        write(v[i], ' ');
    writeln;
end;


(* randomize -> inicializacao da funcao random
   random(n) -> gera um numero de 0 a n *)
procedure cria_permutacao(var v: vetor; n: longint);
var i, j, tam: longint;
    aux: vetor;
begin
    (* cria vetor auxiliar com numero de 1 a n *)
    for i:= 1 to n do
        aux[i] := i;

    randomize;
    tam := n;
    for i:= 1 to n do
    begin
        j := random(tam) + 1;
        v[i] := aux[j];
        aux[j] := aux[tam];
        tam := tam - 1;
    end;
end;

begin
    read(n);
    cria_permutacao(v, n);
    imprime_vetor(v, n);
end.
