//Skalare Parameter des System mit drei Freiheitsgraden
clear;
m1 = 1.0;
m2 = 1.0;
m3 = 1.0;
c1 = 100.0;
c2 = 100.0;
c0 = 100.0;
//Bilden der benoetigten Matrizen
Mm = [ m1 0 0; 0 m2 0; 0 0 m3 ];
Cm = [ c0+c1 -c1 0; -c1 c1+c2 -c2; 0 -c2 c2+c0 ];
Aq = inv(Mm) * Cm;
//Quadrate der Eigenwerte bestimmten
mu = spec(Aq)
//Eigenwerte bestimmten
lam = sqrt(spec(Aq))
//Vergleich mit der analytischen Loesung
lam12 = sqrt ((2-sqrt(2))*c1/m1)
lam34 = sqrt ( 2 *c1/m1)
lam56 = sqrt ((2+sqrt(2))*c1/m1)
