program ex04;
(* FILA *)

const MAX = 200;
type vetor = array [1..MAX+1] of longint;
     fila = record
         tam: longint; (* tamanho da fila *)
         vet: vetor; (* vetor com os elementos da fila *)
     end;

var f: fila;
    n: longint;

(* Cria uma fila vazia *)
procedure cria_fila(var f: fila);
begin
    f.tam := 0;
end;

(* Insere elemento na fila *)
procedure insere_fila(elem: longint; var f: fila);
begin
    f.tam := f.tam + 1;
    f.vet[f.tam] := elem;
end;

(* Remove um determinado elemento da fila *)
procedure remove_fila(elem: longint; var f: fila);
var i, j: longint;
begin
    f.vet[f.tam + 1] := elem; (* sentinela *)

    i := 1;
    while f.vet[i] <> elem do
        i := i + 1;

    if i <= f.tam then
    begin
        for j := i + 1 to f.tam do
            f.vet[j-1] := f.vet[j];
        f.tam := f.tam - 1;
    end;
end;

(* Retorna o tamanho da fila *)
function tamanho_fila(var f: fila): longint;
begin
    tamanho_fila := f.tam;
end;

(* Retorna 'true' se a fila estiver vazia *)
function fila_vazia(var f: fila): boolean;
begin
    if f.tam = 0 then
        fila_vazia := true
    else
        fila_vazia := false;
end;

(* Retorna 'true' ser a fila estiver cheia *)
function fila_cheia(var f: fila): boolean;
begin
    if f.tam = MAX then
        fila_cheia := true
    else
        fila_cheia := false;
end;

(* Imprime a fila *)
procedure imprime_fila(var f: fila);
var i: longint;
begin
    for i := 1 to f.tam do
        write(f.vet[i], ' ');
    writeln;
end;

(* Retorna o elemento do inicio da fila, removendo-o *)
function anda_fila(var f: fila):longint;
var i: longint;
begin
    anda_fila := f.vet[1];

    for i := 2 to f.tam do
        f.vet[i-1] := f.vet[i];
    f.tam := f.tam - 1;
end;

(* Retorna o elemento do inicio da fila, sem remove-lo *)
function inicio_fila(var f: fila): longint;
begin
    inicio_fila := f.vet[1];
end;

begin
    cria_fila(f);
    writeln('Digite um numero para colocar na fila');
    read(n);
    insere_fila(n, f);
    imprime_fila(f);
    writeln('Digite um numero para colocar na fila');
    read(n);
    insere_fila(n, f);
    imprime_fila(f);
    writeln('Digite um numero para colocar na fila');
    read(n);
    insere_fila(n, f);
    imprime_fila(f);
    writeln(anda_fila(f), ' foi atendido e fila andou');
    imprime_fila(f);
end.
