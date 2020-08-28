program ex12;

const MAX = 5;
type vetor = array [1..MAX] of longint;
var num, tam: longint;
    v: vetor;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := tam downto 1 do
        write(v[i], ' ');
    writeln;
end;

procedure converte_em_vetor(num: longint; var v: vetor; var tam: longint);
begin
    tam := 0;
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num mod 10;
        num := num div 10;
    end;
end;

function num_decimal(var v: vetor; tam: longint): longint;
var i, fatorial, total: longint;
begin
    total := 0;
    fatorial := 1;
    for i := 1 to tam do
    begin
        fatorial := fatorial * i;
        total := total + v[i] * fatorial;
    end;
    num_decimal := total;
end;

begin
    read(num);
    while num <> 0 do
    begin
        converte_em_vetor(num, v, tam);
        writeln('Numero em decimal:');
        writeln(num_decimal(v, tam));
        read(num);
    end;
end.
