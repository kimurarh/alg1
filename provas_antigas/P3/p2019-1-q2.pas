program p2019_1_q2;

const MAX = 200;
type matriz = array [1..MAX, 1..MAX] of longint;
     tipo_matriz = record
        tam: longint;
        mat: matriz;
     end;
     
var m: tipo_matriz;

procedure le_matriz_quadrada(var m: tipo_matriz);
var i, j: longint;
begin
    read(m.tam);
    for i := 1 to m.tam do
        for j := 1 to m.tam do
            read(m.mat[i, j]);
end;

function soma_ampulheta(var m: tipo_matriz; i, j: longint): longint;
begin
    soma_ampulheta := m.mat[i, j] + m.mat[i-1, j-1] + m.mat[i-1, j] + m.mat[i-1, j+1]
                      + m.mat[i+1, j-1] + m.mat[i+1, j] + m.mat[i+1, j+1]; 
end;

function maior_ampulheta(var m: tipo_matriz): longint;
var i, j, soma, maior_soma: longint;
begin
    maior_soma := 0;
    for i := 2 to m.tam - 1 do
        for j := 2 to m.tam - 1 do
        begin
            soma := soma_ampulheta(m, i, j);
            if soma > maior_soma then
                maior_soma := soma;
        end;
    maior_ampulheta := maior_soma;
end;

begin
    le_matriz_quadrada(m);
    writeln(maior_ampulheta(m));
end.
