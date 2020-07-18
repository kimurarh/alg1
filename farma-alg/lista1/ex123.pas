program prog_geom;

uses math;

var a1, q, n: longint;

begin
	read(a1, q, n);
	writeln(a1 * Power(q, (n - 1)) :0:2);
end.
