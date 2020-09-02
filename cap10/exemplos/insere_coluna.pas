program insere_nova_coluna_na_matriz;

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

procedure insereCol(var mat: matriz; n: integer; var m: integer;
                    var v: vetor; novaCol: integer);
var i: integer;
begin
    for i:= 1 to n do
        insereVetor(v[i], novaCol, mat[i], m);
    m := m + 1;
end;

begin

end.
