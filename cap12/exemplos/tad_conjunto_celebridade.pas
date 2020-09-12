program tad_conjunto_celebridade;

const
type
var

function conjunto_vazio(c: conjunto): boolean;
(* Retorna 'true' se o conjunto c eh vazio e 'false' caso contrario *)

function cardinalidade(c: conjunto): longint;
(* Retorna a cardinalidade do conjunto c *)

procedure inserir_conjunto(x: longint; var c: conjunto);
(* insere o elemento x no conjunto c, mantem os elementos ordenados *)

procedure remover_conjunto(x: longint; var c: conjunto);
(* Remove o elemento x do conjunto c *)

function uniao(c1, c2: conjunto): conjunto;
(* Obtem a uniao dos conjuntos c1 e c2 *)

function interseccao(c1, c2: conjunto): conjunto;
(* Obtem a interseccao dos conjuntos c1 e c2 *)

function diferenca(c1, c2: conjunto): conjunto;
(* Obtem a diferenca dos conjuntos c1 e c2 (c1 - c2) *)

function pertence(x: longint; c: conjunto): boolean;
(* Retorna 'true' se x pertence ao conjunto e 'false' caso contrario *)

function sao_iguais(c1, c2: conjunto):boolean;
(* Retorna 'true' se o conjunto c1 = c2 e 'false' caso contrario *)

function contido(c1, c2: conjunto): boolean;
(* Retorna 'true' se o conjunto c1 esta contido no conjunto c2 e 'false' caso contrario *)

function copiar_conjunto(c1: conjunto): conjunto;
(* Copia os elementos do conjunto c1 para outro conjunto *)

procedure inicializar_conjunto(var c: conjunto);
(* Cria um conjunto vazio. Deve ser chamado antes de qualquer operacao no conjunto *)

function retirar_um_elemento(var c: conjunto): longint;
(* Escolher um elemento qualquer do conjunto para ser removido, remove e o retorna *)

procedure iniciar_proximo(var c: conjunto);
(* Inicializa o contador que sera usado na funcao incrementar_proximo *)
(* Permite que se opere sobre todos os elementos do conjunto, mas sem remove-los *)

function incrementar_proximo(var c: conjunto; var x: longint): boolean;
(* Incrementa o contador e retorna x por referencia. Retorna 'false' se acabou o conjunto *)


(* Encontra uma possivel celebridade usando conjuntos *)
procedure eliminar_nao_celebridade(var c: conjunto; m: matriz; n: longint);
var a, b: longint;
begin
    while cardinalidade(c) > 1 do
    begin
        a := retirar_umelemento(c);
        b := retirar_umelemento(c);
        if conhece(a, b, m, n) then
            inserir(b, c)
        else
            inserir(a, c);
    end;
end;

function eh_celebridade(candidato: longint; m: matriz; n: integer): boolean;
var i: integer; ok: boolean;
begin
    ok := true;
    i := 1;
    while ok and (i <= n) do
    begin
        if (not conhece(i, candidato, m, n) or conhece(candidato, i, m, n) and (i <> candidato)) then
            ok := false;
        i := i + 1;
    end;
    eh_celebridade := ok;
end;
