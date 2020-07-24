program verifica_palindrome;

var
	n, numOriginal, numContrario: longint;

begin
	read(n);
	numOriginal := n;
	numContrario := n mod 10;
	n := n div 10;

	while n <> 0 do
	begin
		numContrario := numContrario*10 + (n mod 10);
		n := n div 10;
	end;

	if numContrario = numOriginal then
		writeln('SIM')
	else
		writeln('NAO');
end.
