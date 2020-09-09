program exemplo_vetor;

const MAX = 200;
type vetor = array [1..MAX] of longint;
     tipo_vetor = record
                    tam: longint;
                    vet: vetor;
                  end;
var v: tipo_vetor;
    elem: longint;

function pertence(elem: longint; var v: tipo_vetor): boolean;
var i: longint;
begin
    v.vet[v.tam + 1] := elem;
    
    i := 1;
    while v.vet[i] <> elem do
        i := i + 1;

    if i = v.tam + 1 then
        pertence := false
    else
        pertence := true;
end;

procedure ler_vetor(var v: tipo_vetor);
var i: longint;
begin
    read(v.tam);
    for i := 1 to v.tam do
        read(v.vet[i]);
end;

procedure imprimir_vetor(var v: tipo_vetor);
var i: longint;
begin
    for i := 1 to v.tam do
        write(v.vet[i], ' ');
    writeln;
end;


begin
    ler_vetor(v);
    imprimir_vetor(v);
    read(elem);
    if pertence (elem, v) then
        writeln('encontrei')
    else
        writeln('nao encontrei');
end.

