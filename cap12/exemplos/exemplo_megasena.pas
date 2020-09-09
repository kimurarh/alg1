program exemplo_megasena;

const MAX = 200;
type conjunto = record
                    tam: longint;
                    proximo: longint;
                    v: array [0..MAX+1] of longint;
                end;

procedure inicializar_conjunto(var c: conjunto);
(* Cria um conjunto vazio. Deve ser chamado antes de qualquer operacao no conjunto *)
(* Custo: constante *)
begin
    c.tam := 0;
end;

program conjunto_vazio(c: conjunto): boolean;
(* Retorna true se o conjunto c eh vazio e false caso contrario *)
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

(* Pertinencia por busca-binaria | vetor esta ordenado | custo log(n) *)



(* inserir, remover e copiar | vetor esta ordenado | custo linear *)



procedure iniciar_proximo(var c: conjunto);
(* Inicializa o contador que sera usado na funcao incrementar_proximo *)
(* Custo: constante *)
begin
    c.proximo := 1;
end;

function incrementar_proximo(var c: conjunto; var x: longint): boolean;
(* Incrementa o contador e retorna x por referencia. Retorna false se acabou o conjunto *)
begin
    if c.proximo <= c.tamthen
    begin
        x := c.v[c.proximo];
        c.proximo := c.proximo + 1;
        incrementar_proximo := true;
    end
    else
        incrementar_proximo := false;
end;

function retirar_um_elemento(var c: conjunto): longint;
(* Escolhe um elemento qualquer do conjunto para ser removido e o remove *)
(* Optamos por retirar o ultimo elemento, mantendo o conjunto ordenado de modo simples *)
(* Custo: constate, pois optamos por devolver o ultimo elemento *)
begin
    retirar_um_elemento := c.v[c.tam];
    c.tam := c.tam - 1;
end;

function sao_iguais(c1, c2: conjunto): boolean;
(* Retorna true se o conjunto c1 = c2 e false caso contrario *)
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
var i, j, k, l: longint; uni: conjunto;
begin
    inicializar_conjunto(uni);
    i := 1;
    j := 1;
    k := 0;
    while (i <= c1.tam) and (j <= c2.tam) do
    begin
        k := k + 1;
        if c1.v[i] < c2.v[j] then (* avanca apontador do primeiro vetor *)
        begin
            uni.v[k] := c1.v[i];
            i := i + 1;
        end
        else if c1.v[i] > c2.v[j] then (* avanca apontador do segundo vetor *)
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
    copia_restante_do_vetor(uni, c1, i, k);
    copia_restante_do_vetor(uni, c2, j, k);
    uni.tam := k;
    uniao := uni;
end;


function interseccao(c1, c2: conjunto): conjunto;
(* Obtem a interseccao dos conjuntos c1 e c2 *)
(* Custo: como estao ordenados, proporcional ao tamanho do vetor c1 *)
(* Possivel modificacao: o custo pode ser proporcional ao tamaho do menor conjunto *)
var i, j, k: longint; intersec: conjunto;
begin
    inicializar_conjunto(intersec);
    i := 1;
    j := 1;
    k := 0;
    while (i <= c1.tam) and (j <= c2.tam) do
        if c1.v[i] < c2.v[j] then
            i := i + 1
        else
            if c1.v1[i] > c2.v[j] then
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
(* Custo: linera por causa da ordenacao *)
var i, j, k: longint; dif: conjunto;
begin
    inicializar_conjunto(dif);
    i := 1;
    j := 1;
    k := 0;
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
        end
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
(* Retorna true se o conjunto c1 esta contido no conjunto c2 e false caso contrario *)
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







