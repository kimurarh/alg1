program ex01;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
    n, m: longint;

procedure le_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i:= 1 to tam do
        read(v[i]);
end;

function verifica_restante(var v2: vetor; tv2: longint; var v1: vetor; tv1, i: longint): boolean;
var j, cont: longint; encontrou: boolean;
begin
    if (i > tv1 - tv2 + 1) then
        verifica_restante := false (* Restam menos elementos do que o necessario *)
    else
    begin
        encontrou := true;
        j := 1;
        cont := 1;
        while encontrou and (cont < tv2) do
        begin
            i := i + 1;
            j := j + 1;
            if v1[i] <> v2[j] then
                encontrou := false
            else
                cont := cont + 1;
        end;
        verifica_restante := encontrou;
    end;
end;

(* verifica se v1 é subseq se v2 *)
function eh_subseq(var v2: vetor; tv2: longint; 
                   var v1: vetor; tv1: longint): longint;
var i: longint; ocorre: boolean;
begin
    v1[tv1 + 1] := v2[1]; (* sentinela *)
    ocorre := false;

    i := 1;
    while (i <= tv1 - tv2 + 1) and (not ocorre) do
    begin
        (* incrementa ate achar v2[1] *)
        while v1[i] <> v2[1] do
            i := i + 1;

        if verifica_restante(v2, tv2, v1, tv1, i) then
        begin
            ocorre := true;
            eh_subseq := i;
        end;
        i := i + 1;
    end;
end;

begin
    read(n, m);
    le_vetor(v, n);
    le_vetor(w, m);
    writeln(eh_subseq(w, m, v, n));
end.
