program operacoes_com_imagens;



(* clarear imagem *)
procedure clarear_pgm (var O: imagem; l, c, max, cte: integer);
var i, j: integer;
begin
    for i := 1 to l do
        for j := 1 to c do
        begin
            O[i, j] := O[i, j] + cte;
            if O[i, j] > max then
                O[i, j] := max;
        end;
end;

function media_4_vizinhos(var O: imagem; i, j: integer): integer;
var x, y, soma: integer;
begin
    x := 2*i - 1;
    y := 2*j - 1;
    soma := O[x, y] + O[x+1, y] + O[x, y+1] + O[x+1, y+1];
    media_4_vizinhos := soma div 4;
end;

procedure reduzir_pgm(var O: imagem;     lO, cO: integer;
                      var D: imagem; var lD, cD, maxD: integer);
var i, j: integer;
begin
    lD := lO div 2;
    cD := cO div 2;
    for i := 1 to lD do
        for j := 1 to cD do
            D[i, j] := media_4_vizinhos(O, i, j);
        maxD := maior_valor(D, lD, cD); (* pixel de maior intensidade *)
end;

procedure detectar_bordas_pgm(var O, D: imagem; l, c: integer; var max: integer, limiar: integer);
var i, j, grad: integer;
begin
    (* extremidades recebem zero *)
    for i := 1 to l do
    begin
        D[i, 1] := 0;
        D[i, c] := 0;
    end;
    for i := 1 to c do
    begin
        D[1, i] := 0;
        D[l, i] := 0;
    end;

    for i := 2 to l - 1 do
        for j := 2 to c - 1 do
        begin
            grad := abs(O[i, j]*4 - (O[i-1, j] + O[i+1, j] + O[i, j-1] + O[i, j+1]));
            if grad > limiar then
                D[i, j] := 255
            else
                D[i, j] := 0;
        end;
    max := 255;
end;


begin

end.
