program p2019_1_q1;
 
const MAX = 200;
type
    tipo_elemento = integer; 
    vetor = array [1..MAX] of tipo_elemento;
    pilha = record
        tam: integer;
        vet: vetor;
    end;

var p: pilha;
    n: tipo_elemento;
    balanceado: boolean;

procedure inicializa_pilha(var p: pilha);
(* torna a pilha p disponivel para o programador *)
begin
    p.tam := 0;
end;

function pilha_vazia(var p: pilha): boolean;
(* retorna true se a pilha esta vazia e false caso contrario *)
begin
    if p.tam = 0 then
        pilha_vazia := true
    else
        pilha_vazia := false;
    (* pilha_vazia := p.tam = 0; *)
end;

procedure empilha(n: tipo_elemento; var p: pilha);
(* empilha o numero n *)
begin
    p.tam := p.tam + 1;
    p.vet[p.tam] := n;
end;

function desempilha(var p: pilha): tipo_elemento;
(* retorna o topo da pilha e o remove dela *)
begin
    desempilha := p.vet[p.tam];
    p.tam := p.tam - 1;
end;

function topo(var p: pilha): tipo_elemento;
(* retorna o topo da pilha sem desempilhar *)
begin
    topo := p.vet[p.tam];
end;

begin
    inicializa_pilha(p);
    balanceado := true;
    read(n);
    while n <> 0 do
    begin
        if n > 0 then
            empilha(n, p)
        else if (pilha_vazia(p)) or (n + desempilha(p) <> 0) then
            balanceado := false;
        read(n);
    end;

    if balanceado and pilha_vazia(p) then
        writeln('sim')
    else
        writeln('nao');
end.
