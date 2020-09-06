program exemplo;

const MAX = 200;

type vetor = array [1..MAX] of longint;
     conjunto = record
                    tam: longint;
                    vet: vetor;
                end;
var v: conjunto;
    elem, indice: longint;

procedure ler_conjunto(var v: conjunto);
var i: longint;
begin
    read(v.tam);
    for i := 1 to v.tam do
        read(v.vet[i]);
end;

procedure imprimir_conjunto(var v: conjunto);
var i: longint;
begin
    for i := 1 to v.tam do
        write(v.vet[i], ' ');
    writeln;
end;

function pertence(elem: longint; var v: conjunto): boolean;
var i: longint;
begin
    v.vet[v.tam + 1] := elem;

    i := 1;
    while v.vet[i] <> elem do
        i := i + 1;

    if i = v.tam+1 then
        pertence := false
    else
        pertence := true;
end;

procedure inserir(elem: longint; var v: conjunto);
begin
    v.tam := v.tam + 1;
    v.vet[v.tam] := elem;
end;

procedure remover(i: longint; var v: conjunto);
begin
    v.vet[i] := v.vet[v.tam];
    v.tam := v.tam - 1;
end;

begin
    ler_conjunto(v);
    imprimir_conjunto(v);
    read(elem);
    inserir(elem, v);
    imprimir_conjunto(v);
    read(indice);
    remover(indice, v);
    imprimir_conjunto(v);
    (*
    if pertence(elem, v) then
        writeln('pertence')
    else
        writeln('nao pertence');
*)
end.
