program media_alunos;

var i, n, p1, p2, p3, media: integer;

function media_ponderada(p1, p2, p3: integer): integer;
begin
	media_ponderada := (p1 * 1 + p2 * 2 + p3 * 3) div 6;
end;

function aprovado(media: integer): boolean;
begin
	aprovado := false;
	if media >= 50 then
		aprovado := true;
end;

begin
	read(n);
	for i := 1 to n do
	begin
		read(p1, p2, p3);
		media := media_ponderada(p1, p2, p3);

		if aprovado(media) then
			writeln('aluno ', i, ' aprovado com media: ', media)
		else
			writeln('aluno ', i, ' reprovado com media: ', media);
	end;
end.
