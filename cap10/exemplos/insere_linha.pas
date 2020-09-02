program insere_nova_linha_na_matriz;

const MAX_LIN = 200;
      MAX_COL = 200;
type matriz = array [1..MAX_LIN, 1..MAX_COL] of integer;
     vetor = array [1..MAX_COL] of integer;

procedure insereVetor(elem: integer; pos: integer; var v: vetor; tam: integer);
var i: integer;
begin
    for i := tam downto pos do
        v[i+1] := v[i];
    v[pos] := elem;
end;

procedure copiaVetor(var v1, v2: vetor; tam: integer);
var i: integer;
begin
    for i := 1 to tam do
        v2[i] := v1[i];
end;

procedure insereLin(var mat: matriz; n: integer; var m: integer;
                    var v: vetor; novaLin: integer);
var i: integer;
begin
    for i:= n downto novaLin do
            copiaVetor(mat[i], mat[i+1], m);
    for i := 1 to m do
        mat[novaLin, i] := v[i];
    n := n + 1;
end;

begin

end.
