program ex07;

const MAX = 200;
type vetor = array [0..MAX] of longint;
     polinomio = record
        grau: longint;
        coefs: vetor; (* coeficientes do polinomio *)
     end;
var p, q, r: polinomio;
    x: longint;

procedure inicializa_polinomio(var p: polinomio);
(* Inicializa a estrutura do polinomio *)
begin
    p.grau := 0;
end;

procedure le_polinomio(var p: polinomio);
(* Le um polinomio de grau n *)
var i: longint;
begin
    writeln('Digite o grau do polinomio:');
    read(p.grau);

    writeln('Digite os ', p.grau + 1, ' coeficientes do polinomio:');
    for i := 0 to p.grau do
        read(p.coefs[i]);
end;

procedure imprime_polinomio(var p: polinomio);
var i: longint;
begin
    for i := 0 to p.grau do
        write(p.coefs[i], ' ');
    writeln;
end;

function calcula_polinomio(x: longint; var p: polinomio): longint;
(* Calcula o valor de P(x) *)
var resultado, xis, i: longint;
begin
    resultado := 0;

    xis := 1;
    for i := 0 to p.grau do
    begin
        resultado := resultado + p.coefs[i] * xis;
        xis := xis * x;
    end;

    calcula_polinomio := resultado;
end;

function derivada(var p: polinomio): polinomio;
(* Obtem o polinomio derivada de P *)
var i, mult: longint; d: polinomio;
begin
    inicializa_polinomio(d);
    
    d.grau := p.grau - 1;
    mult := 1;

    for i := 0 to d.grau do
    begin
        d.coefs[i] := p.coefs[i+1] * mult;
        mult := mult + 1;
    end;

    derivada := d;
end;

function calcula_derivada(x: longint; var p: polinomio): longint;
(* Calcula o valor de P'(x) *)
var d: polinomio;
begin
    d := derivada(p);
    calcula_derivada := calcula_polinomio(x, d);
end;

function soma(var p, q: polinomio): polinomio;
(* Obtem o polinomio soma de P e Q *)
var s: polinomio; i: longint;
begin
    inicializa_polinomio(s);

    if p.grau < q.grau then
    begin
        s.grau := q.grau;
        for i := 0 to p.grau do
            s.coefs[i] := p.coefs[i] + q.coefs[i];

        for i := p.grau + 1 to q.grau do
            s.coefs[i] := q.coefs[i];
    end
    else if p.grau > q.grau then
    begin
        s.grau := p.grau;
        for i := 0 to q.grau do
            s.coefs[i] := p.coefs[i] + q.coefs[i];

        for i := q.grau + 1 to p.grau do
            s.coefs[i] := p.coefs[i];
    end
    else (* p.grau = q.grau *)
    begin
        s.grau := p.grau;
        for i := 0 to p.grau do
            s.coefs[i] := p.coefs[i] + q.coefs[i];
    end;

    soma := s;
end;

function multiplicacao(var p, q: polinomio): polinomio;
(* Obtem o polinomio multiplicacao de P e Q *)
var m: polinomio; i, j: longint;
begin
    inicializa_polinomio(m);
    m.grau := p.grau + q.grau;
    for i := 0 to m.grau do
        m.coefs[i] := 0;

    for i := 0 to p.grau do
        for j := 0 to q.grau do
            m.coefs[i+j] := m.coefs[i+j] + p.coefs[i] * q.coefs[j];

    multiplicacao := m;
end;

begin
    inicializa_polinomio(p);
    le_polinomio(p);

    inicializa_polinomio(q);
    le_polinomio(q);

    writeln('Polinomio multiplicacao:');
    r := multiplicacao(p, q);;
    imprime_polinomio(r);

    writeln('Digite um valor de x:');
    read(x);
    writeln('Valor do polinomio multiplicacao para x = ', x, ':');
    writeln(calcula_polinomio(x, r));
end.
