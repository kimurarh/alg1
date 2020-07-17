(*
EXERCÍCIO 92

Faça um programa Pascal que leia três números inteiros (P1, P2 e P3) contendo as notas das três provas de um aluno em uma certa disciplina e imprima a média final deste aluno, a qual deve ser um número inteiro. Considerar que a média é ponderada e que o peso das notas é 1, 2 e 3, respectivamente. A fórmula que calcula essa média é:

(P1 + 2 * P2 + 3 * P3)/(1 + 2 + 3)

Exemplos:
Entrada 1:
10 50 80
Saída Esperada 1:
58

Entrada 2:
90 100 48
Saída Esperada 2:
48

*)

program media;

var p1, p2, p3: integer;

begin
	read(P1, P2, P3);
	writeln((P1 + 2 * P2 + 3 * P3) div (1+2+3));
end.
