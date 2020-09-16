program ex05;

const MAX = 200;
type vetor = array [1..MAX] of longint;
     lista = record 
        tam: longint; (* tamanho da lista *)
        vet: vetor; (* vetor com os itens da lista *)
     end;

procedure cria_lista(var l: lista);
(* Cria uma lista vazia *)
begin
    l.tam := 0;
end;

procedure inserir_inicio(elem: longint; var l: lista);
(* Insere um elemento no inicio da lista *)
begin
    l.tam := l.tam + 1;
    l.vet[l.tam] := l.vet[1];
    l.vet[1] := elem;
end;

procedure inserir_fim(elem: longint; var l: lista);
(* Insere um elemento no fim da lista *)
begin
    l.tam := l.tam + 1;
    l.vet[l.tam] := elem;
end;

procedure inserir_posicao(elem, p: longint; var l: lista);
(* Insere um elemento na posicao p *)
begin
    l.tam := l.tam + 1;
    l.vet[l.tam] := l.vet[p];
    l.vet[p] := elem;
end;

procedure remover_inicio(var l: lista);
(* Remove elemento do inicio da lista *)
begin
    l.vet[1] := l.vet[l.tam];
    l.tam := l.tam - 1;
end;

procedure remover_fim(var l: lista);
(* Remove elemento do fim da lista *)
begin
    l.tam := l.tam - 1;
end;

procedure remover_posicao(p: longint; var l: lista);
(* Remove elemento na posicao p *)
begin
    l.vet[p] := l.vet[l.tam];
    l.tam := l.tam - 1;
end;

function tamanho_lista(var l: lista): longint;
(* Retorna o tamanho da lista *)
begin
    tamanho_lista := l.tam;
end;

function lista_vazia(var l: lista): boolean;
(* Retorna TRUE se a lista estiver vazia e FALSE caso contrario *)
begin
    if l.tam = 0 then
        lista_vazia := true
    else
        lista_vazia := false;
end;

function lista_cheia(var l: lista): boolean;
(* Retorna TRUE se a lista estiver cheia e FALSE caso contrario *)
begin
    if l.tam = MAX then
        lista_cheia := true
    else
        lista_cheia := false;
end;

procedure imprimir_lista(var l: lista);
(* Imprime a lista como esta *)
var i: longint;
begin
    for i := 1 to l.tam do
        write(l.vet[i], ' ');
    writeln;
end;

procedure ordena_lista(var l: lista);
(* ordena a lista *)
var i, j, pos_menor, aux: longint;
begin
    for i := 1 to l.tam - 1 do
    begin
        (* Acha o i-esimo menor, a partir da posicao i + 1 *)
        pos_menor := i;
        for j := i + 1 to l.tam do
            if l.vet[j] < l.vet[pos_menor] then
                pos_menor := j;

        (* Troca de lugar com o menor *)
        aux := l.vet[i];
        l.vet[i] := l.vet[pos_menor];
        l.vet[pos_menor] := aux;
    end;
end;

procedure imprimir_lista_ordenada(var l: lista);
(* Imprime a lista ordenada *)
begin
    ordena_lista(l);
    imprimir_lista(l);
end;

function uniao_listas(var l1, l2: lista): lista;
(* Faz a uniao duas listas *)
var uniao: lista; k, i: longint;
begin
    cria_lista(uniao);
    k := 0;

    (* Copia os elementos de l1 *)
    for i := 1 to l1.tam do
    begin
        k := k + 1;
        uniao.vet[k] := l1.vet[i];
    end;

    (* Copia os elementos de l2 *)
    for i := 1 to l2.tam do
    begin
        k := k + 1;
        uniao.vet[k] := l2.vet[i];
    end;

    uniao.tam := k;
    uniao_listas := uniao;
end;

function intercalacao_listas(var l1, l2: lista): lista;
(* Intercala duas listas *)
var inter: lista; i, j, k, ind: longint;
begin
    cria_lista(inter);

    ordena_lista(l1);
    ordena_lista(l2);

    i := 1;
    j := 1;
    k := 0;

    while (i <= l1.tam) and (j <= l2.tam) do
    begin
        k := k + 1;
        
        if l1.vet[i] < l2.vet[j] then
        begin
            inter.vet[k] := l1.vet[i];
            i := i + 1;
        end
        else if l1.vet[i] > l2.vet[j] then
        begin
            inter.vet[k] := l2.vet[j];
            j := j + 1;
        end
        else (* iguais *)
        begin
            inter.vet[k] := l1.vet[i];
            i := i + 1;
            j := j + 1;
        end;
    end;

    for ind := i to l1.tam do
    begin
        k := k + 1;
        inter.vet[k] := l1.vet[ind];
    end;
    for ind := j to l2.tam do
    begin
        k := k + 1;
        inter.vet[k] := l2.vet[ind];
    end;

    inter.tam := k;
    intercalacao_listas := inter;
end;

function elemento_posicao(p: longint; var l: lista): longint;
(* Retorna o elemento na posicao p da lista *)
begin
    elemento_posicao := l.vet[p];
end;

procedure copiar_lista(var l1, l2: lista);
(* Copia uma lista em outra *)
var i: longint;
begin
    cria_lista(l2);

    l2.tam := l1.tam;
    for i := 1 to l1.tam do
        l2.vet[i] := l1.vet[i];
end;

begin
    
end.
