program polimonios;

const MAX = 200;
type polinomio = array [0..MAX] of real;
var grau, graud: integer;
    p, d: polinomio;
    x: real;

procedure le_polinomio(var p: polinomio; grau: integer);
var i: integer;
begin
    for i:= 0 to grau do
        read(p[i]);
end;

procedure somar (var p: polinomio;     graup: integer;
                 var q: polinomio;     grauq: integer;
                 var s: polinomio; var graus: integer);
var i, menorgrau: integer;
begin
    (* o grau do pol soma eh o maior grau entre p e q *)
    (* copiar os coeficientes que o maior pol tem a mais *)
    if graup > grauq then
    begin
        graus := graup;
        menorgrau := grauq;
        for i:= menorgrau + 1 to graus do
            s[i] := p[i];
    end
    else
    begin
        graus := grauq;
        menorgrau := graup;
        for i:= menorgrau + 1 to graus do
            s[i] := q[i];
    end;

    for i:= 0 to menorgrau do
        s[i] := p[i] + q[i];
end;


procedure produto (var p: polinomio;     graup: integer;
                   var q: polinomio;     grauq: integer;
                   var m: polinomio; var graum: integer);
var i, j: integer;
begin
    graum := graup + grauq;
    (* cria um vetor multiplicacao zerado *)
    for i := 0 to graum do
        m[i] := 0;

    for i:= 0 to graup do
        for j:= 0 to grauq do
            m[i+j] := m[i+j] + p[i]*q[j];

    if ((graup = 0) and (p[0] = 0)) or ((grauq = 0) and (q[0] = 0)) then
       graum := 0;
end;

procedure derivar (var p: polinomio; graup: integer; var d: polinomio; var graud: integer);
var i: integer;
begin
    if graup = 0 then
    begin
        graud := 0;
        d[0] := 0;
    end
    else
    begin
        graud := graup - 1;
        for i:= 0 to graud do
            d[i] := (i+1) * p[i+1];
    end;
end;

function valor_no_ponto (var p: polinomio; grau: integer; x: real): real;
var soma, potx: real;
    i: integer;
begin
    potx := 1;
    soma := 0;
    for i:= 0 to grau do
    begin
        soma := soma + p[i]*potx;
        potx := potx * x;
    end;
    valor_no_ponto := soma;
end;

begin
    writeln('Digite o grau do polimonio:');
    read(grau);
    writeln('Digite as constantes do polimonio:');
    le_polinomio(p, grau);
    writeln('Digite o valor de x:');
    read(x);
    writeln(valor_no_ponto(p, grau, x):0:2);
    derivar(p, grau, d, graud);
end.
