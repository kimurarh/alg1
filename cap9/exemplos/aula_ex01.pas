program ex01_aula;

const MAX = 10;
type vetor = array [1..MAX] of longint;

var v, w, s: vetor;

procedure ler_vetor(var v: vetor);
var i: longint;
begin
    for i := 1 to MAX do
        read(v[i]);
end;

procedure imprimir_vetor(var v: vetor);
var i: longint;
begin
    for i := 1 to MAX do
        write(v[i], ' ');
    writeln;
end;

procedure soma_vetores(var v, w, s: vetor);
var i: longint;
begin
    for i := 1 to MAX do
        s[i] := v[i] + w[i];
end;

procedure verifica_vetor(var v: vetor);
var media: real; i, maiores, iguais, menores: longint;
begin
    maiores := 0;
    iguais := 0;
    menores := 0;
    media := 0;
    for i := 1 to MAX do
        media := media + v[i];
    media := media / MAX;

    for i := 1 to MAX do
        if v[i] > media then
            maiores := maiores + 1
        else if v[i] = media then
            iguais := iguais + 1
        else
            menores := menores + 1;

    writeln(maiores, ' valores maiores que a media');
    writeln(iguais, ' valores iguais a media');
    writeln(menores, ' valores menores que a media');
end;

begin
    ler_vetor(v);
    ler_vetor(w);
    soma_vetores(v, w, s);
    writeln('Vetor V:');
    imprimir_vetor(v);
    verifica_vetor(v);
    writeln('Vetor W:');
    imprimir_vetor(w);
    verifica_vetor(w);
    writeln('Vetor S:');
    imprimir_vetor(s);
    verifica_vetor(s);
end.
