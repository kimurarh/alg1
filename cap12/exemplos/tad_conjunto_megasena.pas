program tad_conjunto_megasena;

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

program megasena;
(* usa um TAD conjunto aidna nao definido *)
(* usa as funcoes e procedimentos acima definidos *)

var sorteio, aposta, interec: conjunto;
    N, num_acertos: longint;

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
