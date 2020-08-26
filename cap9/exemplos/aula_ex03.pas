program ex03_imprime_vetor;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v: vetor;
    tam: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        read(v[i]);
end;

procedure imprime_vetor_contrario(var v: vetor; tam: longint);
var i: longint;
begin
    for i := tam downto 1 do
        write(v[i], ' ');
    writeln;
end;

begin
    read(tam);
    le_vetor(v, tam);
    imprime_vetor_contrario(v, tam);
end.
