program ex03;

const MAX_L = 100; MAX_C = 100;
type matriz = array [1..MAX_L, 1..MAX_C] of real;
var m1, m2: matriz;
    l1, c1, l2, c2: longint;

procedure le_matriz(var mat: matriz; lin, col: longint);
var i, j: longint;
begin
    for i := 1 to lin do
        for j := 1 to col do
            read(mat[i, j]);
end;

function eh_inversa(var m1: matriz; l1, c1: longint; 
                    var m2: matriz; l2, c2: longint): boolean;
var i, j, k: longint; produto: real; verifica: boolean;
begin
    verifica := true;

    if c1 <> l2 then
        verifica := false
    else
    begin
        i := 1;
        while (i <= l1) and verifica do
        begin
            j := 1;
            while (j <= c2) and verifica do
            begin
                (* produto escalar *)
                produto := 0;
                for k := 1 to l2 do
                    produto := produto + m1[i, k] * m2[k, j];

                if ((i = j) and (produto <> 1)) or ((i <> j) and (produto <> 0)) then
                    verifica := false;

                j := j + 1;
            end;
            i := i + 1;
        end;
    end;

    eh_inversa := verifica;
end;

begin
    writeln('Digite as dimensoes da primeira matriz:');
    read(l1, c1);
    writeln('Digite a primeira matriz:');
    le_matriz(m1, l1, c1);
    writeln('Digite as dimensoes da segunda matriz:');
    read(l2, c2);
    writeln('Digite a segunda matriz:');
    le_matriz(m2, l2, c2);

    if eh_inversa(m1, l1, c1, m2, l2, c2) then
        writeln('sim')
    else
        writeln('nao');
end.
