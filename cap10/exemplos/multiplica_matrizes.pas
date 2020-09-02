program multiplica;

type matriz = array [1..50, 1..50] of longint;

(* numero de colunas da matriz A tem que ser igual ao numero de linhas da matriz B *)
procedure multiplica_matrizes(var A: matriz;      lin_A, col_A: integer;
                              var B: matriz;      lin_B, col_B: integer;
                              var AB: matriz; var lin_AB, col_AB: integer);
var i, j, k: integer;
begin
    lin_AB := lin_A;
    col_AB := col_B;
    for i := 1 to lin_A do
        for j := 1 to col_B do
        begin
            (* produto escalar *)
            AB[i, j] := 0;
            for k := 1 to lin_B do
                AB[i, j] := AB[i, j] + A[i, k] * B[k, j];
        end;
end;

begin

end.
