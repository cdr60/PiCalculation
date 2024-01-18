program calculpi;
uses crt,dos;
var resultat,erreur:real;
    n:integer;

procedure lecture(var n:integer);
begin
   clrscr;
   writeln('Approximation de Pi');
   writeln('Entrer n=');
   readln(n);
end;


function f(x:real):real;
begin
   f:=4/(1+x*x);
end;

procedure calculer(n:integer;var resultat,erreur:real);
var i:integer;
    aux:real;
begin
   aux:=0;
   for i:=0 to n-1 do aux:=aux+f(i/n)+f((i+1)/n)+4*f((2*i+1)/(2*n));
   resultat:=aux/(6*n);
   erreur:=pi-resultat;
end;

procedure affichage(resultat,erreur:real);
begin
   writeln;
   writeln('PI=',pi);
   writeln('Approximation=',resultat);
   writeln('Erreur=',erreur);
end;

BEGIN
   lecture(n);
   calculer(n,resultat,erreur);
   affichage(resultat,erreur);
   readkey;
END.