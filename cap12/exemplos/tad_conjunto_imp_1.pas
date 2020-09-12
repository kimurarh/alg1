program tad_conjunto_implementacao_1;

(* IMPLEMENTACAO CONSIDERANDO UM VETOR COM ELEMENTOS ORDENADOS *)

const MAX = 101;
type conjunto = record
        tam: longint;
        proximo: longint;
        v: array [0..MAX+1] of longint;
     end;
     (* primeira e ultima posicoes (c.v[0] e c.v[MAX+1]): sentinelas *)
var sorteio, aposta, intersec: conjunto;
    N, num_acertos, i, tam_aposta: longint;

procedure inicializar_conjunto(var c: conjunto);
(* Cria um conjunto vazio. Deve ser chamado antes de qualquer operacao no conjunto *)
(* Custo: constante *)
begin
    c.tam := 0;
end;

function conjunto_vazio(c: conjunto): boolean;
(* Retorna 'true' se o conjunto c eh vazio e 'false' caso contrario *)
(* Custo: constante *)
begin
    conjunto_vazio := c.tam = 0;
end;

function cardinalidade(c: conjunto): longint;
(* Retorna a cardinalidade do conjunto c *)
(* Custo: constante *)
begin
    cardinalidade := c.tam;
end;

function busca_binaria(x: longint; c: conjunto): longint;
(* Retorna o indice do vetor que contem x, senao retorna zero *)
(* Custo: proporcional ao logaritmo do tamanho do conjunto *)
var ini, fim, meio: longint;
begin
    ini := 1;
    fim := c.tam;
    meio := (ini + fim) div 2;
    while (ini <= fim) and (x <> c.v[meio]) do
    begin
        if x < c.v[meio] then
            fim := meio - 1
        else
            ini := meio + 1;
        meio := (ini + fim) div 2;
    end;

    if fim < ini then
        busca_binaria := 0
    else
        busca_binaria := meio;
end;

function pertence(x: longint; c: conjunto): boolean;
(* Retorna 'true' se x pertence ao conjunto e 'false' caso contrario *)
(* Custo: proporcional ao logaritmo do tamanho do conjunto *)
begin
    (* a funcao busca_binaria retorna o indice do vetor que contem x *)
    (* se x nao esta no vetor, retorna zero *)
    pertence := busca_binaria(x, c) <> 0;
end;

procedure inserir_conjunto(x: longint; var c: conjunto);
(* insere o elemento x no conjunto c, manotem os elementos ordenados *)
(* Custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto *)
var i: longint;
begin
    if not pertence(x, c) then
    begin
        c.v[0] := x; (* sentinela *)
        i := c.tam;
        while x < c.v[i] do (* procure o ponto de insercao abrindo espaco *)
        begin
            c.v[i+1] := c.v[i];
            i := i - 1;
        end;
        c.v[i+1] := x;
        c.tam := c.tam + 1;
    end;
end;

procedure remover_conjunto(x: longint; var c: conjunto);
(* Remove o elemento x do conjunto c *)
(* Custo: para garantir o conjunto ordenado, proporcional ao tamanho do conjunto *)
var i, indice: longint;
begin
    indice := busca_binaria(x, c);
    if indice <> 0 then
    begin
        for i := indice to c.tam - 1 do (* puxa os elementos para tras *)
            c.v[i] := c.v[i+1];
        c.tam := c.tam - 1;
    end;
end;

procedure iniciar_proximo(var c: conjunto);
(* Inicializa o contador que sera usado na funcao incrementar_proximo *)
(* Permite que se opere sobre todos os elementos do conjunto, mas sem remove-los *)
(* Custo: constante *)
begin
    c.proximo := 1;
end;

function incrementar_proximo(var c: conjunto; var x: longint): boolean;
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

function retirar_um_elemento(var c: conjunto): longint;
(* Escolher um elemento qualquer do conjunto para ser removido, remove e o retorna *)
(* Custo: constante, pois optamos por devolver o ultimo elemento *)
begin
    retirar_um_elemento := c.v[c.tam];
    c.tam := c.tam - 1;
end;

function sao_iguais(c1, c2: conjunto):boolean;
(* Retorna 'true' se o conjunto c1 = c2 e 'false' caso contrario *)
(* Custo: dada a ordenacao, linear *)
var i: longint;
begin
    if c1.tam <> c2.tam then
        sao_iguais := false
    else
    begin
        i := 1;
        while (i <= c1.tam) and (c1.v[i] = c2.v[i]) do
            i := i + 1;
        if i <= c1.tam then
            sao_iguais := false
        else
            sao_iguais := true;
    end;
end;

function uniao(c1, c2: conjunto): conjunto;
(* Obtem a uniao dos conjuntos c1 e c2 *)
(* Custo: como estao ordenados, proporcional a soma dos tamanhos dos vetores *)
var i, j, k, l: longint; uni: conjunto;
begin
    inicializar_conjunto(uni);
    i := 1; j := 1; k := 0;
    while (i <= c1.tam) and (j <= c2.tam) do
    begin
        k := k + 1;
        if c1.v[i] < c2.v[j] then (* avanca o apontador do primeiro vetor *)
        begin
            uni.v[k] := c1.v[i];
            i := i + 1;
        end
        else if c1.v[i] > c2.v[j] then (* avanca o apontador do segundo vetor *)
        begin
            uni.v[k] := c2.v[j];
            j := j + 1;
        end
        else (* descarta um dos repetidos e avanca os dois apontadores *)
        begin
            uni.v[k] := c1.v[i];
            i := i + 1;
            j := j + 1;
        end;
    end;
    for l := i to c1.tam do
    begin
        k := k + 1;
        uni.v[k] := c1.v[l];
    end;
    for l := j to c2.tam do
    begin
        k := k + 1;
        uni.v[k] := c2.v[l];
    end;
    uni.tam := k;
    uniao := uni;
end;

function interseccao(c1, c2: conjunto): conjunto;
(* Obtem a interseccao dos conjuntos c1 e c2 *)
(* Custo: como estao ordenados, proporcional ao tamanho do vetor c1 *)
var i, j, k: longint; intersec: conjunto;
begin
    inicializar_conjunto(intersec);
    i := 1; j := 1; k := 0;
    while (i <= c1.tam) and (j <= c2.tam) do
        if c1.v[i] < c2.v[j] then
            i := i + 1
        else
            if c1.v[i] > c2.v[j] then
                j := j + 1
            else (* elemento esta nos dois conjuntos *)
            begin
                k := k + 1;
                intersec.v[k] := c1.v[i];
                i := i + 1;
                j := j + 1;
            end;
    intersec.tam := k;
    interseccao := intersec;
end;

function diferenca(c1, c2: conjunto): conjunto;
(* Obtem a diferenca dos conjuntos c1 e c2 (c1 - c2) *)
(* Custo: linear por causa da ordenacao *)
var i, j, k: longint; dif: conjunto;
begin
    inicializar_conjunto(dif);
    i := 1; j := 1; k := 0;
    while (i <= c1.tam) and (j <= c2.tam) do
        if c1.v[i] < c2.v[j] then
        begin
            k := k + 1;
            dif.v[k] := c1.v[i];
            i := i + 1;
        end
        else if c1.v[i] > c2.v[j] then
            j := j + 1
        else (* sao iguais *)
        begin
            i := i + 1;
            j := j + 1;
        end;
        (* se ainda tem elementos em c1, copia *)
        for j := i to c1.tam do
        begin
            k := k + 1;
            dif.v[k] := c1.v[j];
        end;
    dif.tam := k;
    diferenca := dif;
end;

function contido(c1, c2: conjunto): boolean;
(* Retorna 'true' se o conjunto c1 esta contido no conjunto c2 e 'false' caso contrario *)
(* Custo: proporcional ao tamanho do conjunto c1 *)
var i, j: longint; ok: boolean;
begin
    if c1.tam > c2.tam then
        contido := false
    else
    begin
        contido := false;
        ok := true;
        i := 1;
        j := 1;
        while (i <= c1.tam) and (j <= c2.tam) and ok do
            if c1.v[i] < c2.v[j] then
                ok := false
            else if c1.v[i] > c2.v[j] then
                j := j + 1
            else
            begin
                i := i + 1;
                j := j + 1;
            end;
        if ok and (i > c1.tam) then
            contido := true;
    end;
end;

function copiar_conjunto(c1: conjunto): conjunto;
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
