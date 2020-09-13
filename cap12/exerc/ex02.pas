program ex02;

const MAX = 200;
type vetor = array [1..MAX] of longint;
     pilha = record
         tam: longint; (* tamanho da pilha *)
         vet: vetor; (* pilha em si *)
     end;

var p: pilha;

(* Inicializar: torna a pilha P disponivel para o usuario *)
procedure inicializar(var p: pilha);
begin
    p.tam := 0;
end;

(* Pilha_Vazia: retorna 'true' se a pilha esta vazia e 'false' caso contrario *)
function pilha_vazia(var p: pilha): boolean;
begin
    pilha_vazia := false;
    if p.tam = 0 then
        pilha_vazia := true;
end;

(* Empilhar: coloca o numero NUM no topo da pilha *)
procedure empilhar(num: longint; var p: pilha);
begin
    p.tam := p.tam + 1;
    p.vet[p.tam] := num; 
end;

(* Desempilhar: retorna o topo da pilha e o remove dela *)
function desempilhar(var p: pilha): longint;
begin
    desempilhar := p.vet[p.tam];
    p.tam := p.tam - 1;
end;

(* Topo: retorna o topo da pilha sem desempilhar *)
function topo(var p: pilha): longint;
begin
    topo := p.vet[p.tam];
end;

begin

end.
