program ex03;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w, c: vetor;
    tv, tw, tc: longint;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    tam := 0;
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure concatena(var v: vetor; tv: longint; var w: vetor; tw: longint; var c: vetor; var tc: longint);
var i: longint;
begin
    tc := tv + tw;
    for i := 1 to tv do
        c[i] := v[i];
    
    for i := 1 to tw do
        c[tv + i] := w[i];
end;

begin
    le_vetor(v, tv);
    le_vetor(w, tw);
    concatena(v, tv, w, tw, c, tc);
    imprime_vetor(c, tc)
end.
