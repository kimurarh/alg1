program ex06;

const MAX = 200;
type vetor = array [1..MAX] of integer;
var tam_rod, max_tempo, t, tipo, placa, velocidade: integer;
    rod, velo_rod: vetor;

procedure imprime_vetor(var v: vetor; tam: longint);
var i: longint;
begin
    for i := 1 to tam do
        write(v[i], ' ');
    writeln;
end;

procedure avanca(posicao: integer; var rod: vetor; tam_rod: integer; var velo_rod: vetor);
var j: integer;
begin
    for j := 1 to velo_rod[posicao] do
        if posicao = tam_rod then
        begin
            writeln(t, ' ', rod[posicao]);
            rod[tam_rod] := 0;
            velo_rod[tam_rod] := 0;
        end
        else if rod[posicao + 1] = 0 then
        begin
            rod[posicao + 1] := rod[posicao];
            rod[posicao] := 0;
            velo_rod[posicao + 1] := velo_rod[posicao];
            velo_rod[posicao] := 0;
            posicao := posicao + 1;
        end;
end;

procedure atualiza_rod(var rod: vetor; tam_rod: integer; var velo_rod: vetor);
var i: integer;
begin
    for i := tam_rod downto 1 do
        if rod[i] <> 0 then
            avanca(i, rod, tam_rod, velo_rod)    
end;

procedure detecta_entrada(var tipo, placa, velocidade: integer);
begin
    read(tipo);
    if tipo <> 0 then
        read(placa, velocidade);
end;

procedure add_veiculo(tipo, placa, velocidade: integer; var rod: vetor; tam_rod: integer; var velo_rod: vetor);
var i: integer;
begin
    for i:= 1 to tipo do
    begin
        rod[i] := placa;
        velo_rod[i] := velocidade;
    end;
end;

procedure gera_rodovia_vazia(var v: vetor; tam: integer);
var i: integer;
begin
    for i:= 1 to tam do
        v[i] := 0;
end;

begin
    read(tam_rod, max_tempo);
    gera_rodovia_vazia(rod, tam_rod+1);

    (* primeira entrada *)
    detecta_entrada(tipo, placa, velocidade);
    if tipo <> 0 then
        add_veiculo(tipo, placa, velocidade, rod, tam_rod, velo_rod);

    for t := 2 to max_tempo do
    begin
        atualiza_rod(rod, tam_rod, velo_rod);
        detecta_entrada(tipo, placa, velocidade);
        if tipo <> 0 then
            add_veiculo(tipo, placa, velocidade, rod, tam_rod, velo_rod);
    end;
end.
