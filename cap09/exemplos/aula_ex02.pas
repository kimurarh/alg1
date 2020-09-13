program exemplo_vetores;

const MAX = 9;
type vetor = array [0..MAX] of longint;
var qnt_dgts: vetor;
    num: longint;

procedure cria_vetor_zerado(var v: vetor);
var i: longint;
begin
    for i:= 0 to MAX do
        v[i] := 0;
end;

procedure conta_digitos(num: longint; var v: vetor);
var digito: longint;
begin
    while num <> 0 do
    begin
        digito := num mod 10;
        v[digito] := v[digito] + 1;
        num := num div 10;
    end;
end;

procedure imprime_digitos(var v: vetor);
var i: longint;
begin
    for i := 0 to MAX do
        if v[i] > 0 then
            writeln(v[i], ' digitos ', i);
end;

begin
    read(num);
    cria_vetor_zerado(qnt_dgts);
    conta_digitos(num, qnt_dgts);
    imprime_digitos(qnt_dgts);
end.
