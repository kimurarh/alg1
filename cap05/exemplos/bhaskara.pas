program bhaskara;
var b, c, raiz: real;

begin
	read(b);
	read(c);
	raiz := sqrt(b*b - 4*c);
	write((b - raiz)/2);
	write((b + raiz)/2);
end.
