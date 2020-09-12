program tad_conjunto_implementacao_2;

(* IMPLEMENTACAO CONSIDERANDO UM VETOR COM ELEMENTOS NAO ORDENADOS *)

const MAX = 101;
type conjunto = record
        tam: longint;
        proximo: longint;
        v: array [0..MAX+1] of longint;
     end;
     (* primeira e ultima posicoes (c.v[0] e c.v[MAX+1]): sentinelas *)
var sorteio, aposta, intersec: conjunto;
    N, num_acertos, i, tam_aposta: longint;

procedure inicializar_conjunto(var c: conjunto); (* IGUAL A IMPLEMENTACAO 1 *)
(* Cria um conjunto vazio. Deve ser chamado antes de qualquer operacao no conjunto *)
(* Custo: constante *)
begin
    c.tam := 0;
end;

function conjunto_vazio(c: conjunto): boolean; (* IGUAL A IMPLEMENTACAO 1 *)
(* Retorna 'true' se o conjunto c eh vazio e 'false' caso contrario *)
(* Custo: constante *)
begin
    conjunto_vazio := c.tam = 0;
end;

function cardinalidade(c: conjunto): longint; (* IGUAL A IMPLEMENTACAO 1 *)
(* Retorna a cardinalidade do conjunto c *)
(* Custo: constante *)
begin
    cardinalidade := c.tam;
end;

function pertence(x: longint; c: conjunto): boolean;
(* Retorna 'true' se x pertence ao conjunto e 'false' caso contrario *)
(* Custo: proporcional ao tamanho do conjunto *)
var i: longint;
begin
    pertence := true;
    c.v[c.tam + 1] := x;
    i := 1;
    while c.v[i] <> x do
        i := i + 1;
    if i > c.tam then
        pertence := false;
end;

procedure inserir_conjunto(x: longint; var c: conjunto);
(* insere o elemento x no conjunto c, manotem os elementos ordenados *)
(* Custo: linear *)
begin
    if not pertence(x, c) then
    begin
        c.tam := c.tam + 1;
        c.v[c.tam] := x;
    end;
end;

procedure remover_conjunto(x: longint; var c: conjunto);
(* Remove o elemento x do conjunto c *)
(* Custo: linear *)
var indice: longint;
begin
    indice := 1;
    c.v[c.tam+1] := x;
    while x <> c.v[indice] do
        indice := indice + 1;

    if indice < c.tam + 1 then
    begin
        c.v[indice] := c.v[c.tam];
        c.tam := c.tam - 1;
    end;
end;

procedure iniciar_proximo(var c: conjunto); (* IGUAL A IMPLEMENTACAO 1 *)
(* Inicializa o contador que sera usado na funcao incrementar_proximo *)
(* Permite que se opere sobre todos os elementos do conjunto, mas sem remove-los *)
(* Custo: constante *)
begin
    c.proximo := 1;
end;

function incrementar_proximo(var c: conjunto; var x: longint): boolean; (* IGUAL A IMPLEMENTACAO 1 *)
(* Incrementa o contador e retorna x por referencia. Retorna 'false' se acabou o conjunto *)
begin
    if c.proximo <= c.tam then
    begin
        x := c.v[c.proximo];
        c.proximo := c.proximo + 1;
        incrementar_proximo := true;
    end
    else
        incrementar_proximo := false;
end;

function retirar_um_elemento(var c: conjunto): longint; (* IGUAL A IMPLEMENTACAO 1 *)
(* Escolher um elemento qualquer do conjunto para ser removido, remove e o retorna *)
(* Custo: constante, pois optamos por devolver o ultimo elemento *)
begin
    retirar_um_elemento := c.v[c.tam];
    c.tam := c.tam - 1;
end;

function contido(c1, c2: conjunto): boolean;
(* Retorna 'true' se o conjunto c1 esta contido no conjunto c2 e 'false' caso contrario *)
(* Custo: quadratico por causa do teste de pertinencia *)
var i: longint;
    ok: boolean;
begin
    if c1.tam > c2.tam then
        contido := false
    else
    begin
        i := 1;
        ok := true;
        while ok and (i <= c1.tam) do
        begin
            if not pertence(c1.v[i], c2) then
                ok := false;
            i := i + 1;
        end;
        contido := ok;
    end;
end;

function sao_iguais(c1, c2: conjunto):boolean;
(* Retorna 'true' se o conjunto c1 = c2 e 'false' caso contrario *)
(* Custo: dada a ordenacao, linear *)
begin
    if c1.tam <> c2.tam then
        sao_iguais := false
    else
        if contido(c1, c2) and contido(c2, c1) then
            sao_iguais := true
        else
            sao_iguais := false;
end;

function uniao(c1, c2: conjunto): conjunto;
(* Obtem a uniao dos conjuntos c1 e c2 *)
(* Custo: quadratico por causa do teste de pertinencia *)
var i: longint; uni: conjunto;
begin
    inicializar_conjunto(uni);
    for i := 1 to c1.tam do
        inserir_conjunto(c1.v[i], uni);
    uni.tam := c1.tam;
    for i := 1 to c2.tam do
        inserir_conjunto(c2.v[i], uni);
    uniao := uni;
end;

function interseccao(c1, c2: conjunto): conjunto;
(* Obtem a interseccao dos conjuntos c1 e c2 *)
(* Custo: quadratico por causa do teste de pertinencia *)
var i: longint; intersec: conjunto;
begin
    inicializar_conjunto(intersec);
    for i := 1 to c1.tam do
        if pertence(c1.v[i], c2) then
            inserir_conjunto(c1.v[i], intersec);
    interseccao := intersec;
end;

function diferenca(c1, c2: conjunto): conjunto;
(* Obtem a diferenca dos conjuntos c1 e c2 (c1 - c2) *)
(* Custo: quadratico por causa do teste de pertinencia *)
var i: longint; dif: conjunto;
begin
    inicializar_conjunto(dif);
    for i := 1 to c1.tam do
        if not pertence(c1.v[i], c2) then
            inserir_conjunto(c1.v[i], dif);
    diferenca := dif;
end;


function copiar_conjunto(c1: conjunto): conjunto; (* IGUAL A IMPLEMENTACAO 1 *)
(* Copia os elementos do conjunto c1 para outro conjunto *)
(* Custo: proporcional ao tamanho do conjunto c1 *)
var i: longint; c2: conjunto;
begin
    inicializar_conjunto(c2);
    c2.tam := c1.tam;
    for i := 0 to c1.tam do
        c2.v[i] := c1.v[i];
    copiar_conjunto := c2;
end;

procedure ler(var c: conjunto; tam_aposta: longint);
var i, num: longint;
begin
    inicializar_conjunto(c);
    for i := 1 to tam_aposta do
    begin
        read(num);
        inserir_conjunto(num, c);
    end;
end;


begin
    ler(sorteio, 6);
    read(N);
    for i := 1 to N do
    begin
        read(tam_aposta);
        ler(aposta, tam_aposta);
        intersec := interseccao(sorteio, aposta);
        num_acertos := cardinalidade(intersec);
        if num_acertos = 6 then
            writeln('aposta ', i, ' ganhou a megasena!')
        else if num_acertos = 5 then
            writeln('aposta ', i, ' ganhou a quina!')
        else if num_acertos = 4 then
            writeln('aposta ', i, ' ganhou a quadra');
        (* else nao imprime nada, o acerto foi no maximo 3 e eh perdedora *)
    end;
end.
