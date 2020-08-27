program ex10;

const MAX = 200;
type vetor = array [0..MAX] of longint;
var b, n: longint;
    v: vetor;


procedure le_vetor(base: longint; var v: vetor; tam: longint);
var i: longint;
begin
    v[0] := base;
    for i:= 1 to tam do
        read(v[i]);
end;

function converte_decimal(var v: vetor; tam: longint): longint;
var i, decimal, base: longint;
begin
    decimal := 0;
    base := 1;
    
    i := tam;
    while (v[i] < v[0]) and (v[i] >= 0) do (* menor que a base *)
    begin
        decimal := decimal + v[i] * base;
        base := base * v[0]; (* incrementa base *) 
        i := i - 1;
    end;
    
    converte_decimal := decimal;
    if i <> 0 then
        converte_decimal := -1;
end;

begin
    read(b);
    read(n);
    le_vetor(b, v, n);
    writeln(converte_decimal(v, n));
end.
