program p2017_1_q2;

const MAX = 200;
type vetor = array [1..MAX] of longint;
var v, w: vetor;
    tv, tw: longint;

procedure le_vetor(var v: vetor; var tam: longint);
var num: longint;
begin
    read(num);
    while num <> 0 do
    begin
        tam := tam + 1;
        v[tam] := num;
        read(num);
    end;
end;

function verifica_restante(i: longint; var v: vetor; tv: longint; var w: vetor; tw: longint): boolean;
var j, cont: longint; ocorre: boolean;
begin
    if (i > tw - tv + 1) then
        verifica_restante := false (* restam menos elementos do que o tam *)
    else
    begin
        ocorre := true;
        j := 1;
        cont := 1;
        while ocorre and (cont < tv) do
        begin
            i := i + 1;
            j := j + 1;
            if w[i] <> v[j] then
                ocorre := false
            else
                cont := cont + 1;
        end;
        verifica_restante := ocorre;
    end;    
end;

function conta_aparicoes(var v: vetor; tv: longint;
                         var w: vetor; tw: longint): longint;
var i, cont: longint;
begin
    w[tw + 1] := v[1]; (* sentinela *)
    cont := 0;
    i := 1;

    while i <= tw - tv + 1 do 
    begin
        (* incrementa ate encontrar *)
        while w[i] <> v[1] do
            i := i + 1;

        (* verifica se os proximos numeros tbm sao iguais *)
        if verifica_restante(i, v, tv, w, tw) then
        begin
            cont := cont + 1;
            i := i + tv;
        end
        else
            i := i + 1;
    end;
    conta_aparicoes := cont;
end;

begin
    le_vetor(v, tv);
    le_vetor(w, tw);
    writeln(conta_aparicoes(v, tv, w, tw));
end.
