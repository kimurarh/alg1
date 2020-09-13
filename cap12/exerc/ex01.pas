program ex01;

type racional = record
        num: longint;
        den: longint;
     end;
var n1, n2: racional;

procedure le_racional(var x: racional);
begin
    read(x.num);
    read(x.den);
end;

procedure imprime_racional(x: racional);
begin
    if x.num = 0 then
        writeln(x.num)
    else
        writeln(x.num, '/', x.den);
end;

function mdc_euclides(a, b: longint): longint;
begin
    while (a <> 0) and (b <> 0) do
    begin 
        if a > b then
            a := a mod b
        else
            b := b mod a;
    end;
    if a = 0 then
        mdc_euclides := b
    else
        mdc_euclides := a;
end;

procedure simplifica(var a, b: longint);
var mdc: longint;
begin
    mdc := mdc_euclides(a, b);

    a := a div mdc;
    b := b div mdc;
end;

function adicao(n1, n2: racional): racional;
var res: racional;
begin
    res.den := n1.den * n2.den;
    res.num := n1.num * n2.den + n2.num * n1.den;

    simplifica(res.den, res.num);
    adicao := res;
end;

function subtracao(n1, n2: racional): racional;
var res: racional;
begin
    res.num := n1.num * n2.den - n2.num * n1.den;
    if res.num <> 0 then
    begin
        res.den := n1.den * n2.den;
        simplifica(res.den, res.num);
    end;
    subtracao := res;
end;

function multiplicacao(n1, n2: racional): racional;
var res: racional;
begin
    res.num := n1.num * n2.num;
    res.den := n1.den * n2.den;

    simplifica(res.den, res.num);
    multiplicacao := res;
end;

function divisao(n1, n2: racional): racional;
var res: racional;
begin
    res.num := n1.num * n2.den;
    res.den := n1.den * n2.num;
    
    simplifica(res.den, res.num);
    divisao := res;
end;

begin
    le_racional(n1);
    le_racional(n2);
    write('adicao: ');
    imprime_racional(adicao(n1, n2));
    write('subtracao: ');
    imprime_racional(subtracao(n1, n2));
    write('multiplicacao: ');
    imprime_racional(multiplicacao(n1, n2));
    write('divisao: ');
    imprime_racional(divisao(n1, n2));
end.
