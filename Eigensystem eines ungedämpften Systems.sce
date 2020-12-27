//Skalare Parameter des Systems
m1=1.0;
m2=1.0;
m3=1.0;
c0=100.0;
c1=100.0;
c2=100.0;
//Matrixengenerierung
Mm=[m1 0 0; 0 m2 0; 0 0 m3];
Cm=[c0+c1 -c1 0; -c1 c1+c2 -c2; 0 -c2 c2+c0];
Aq=inv(Mm)*Cm
//Eigenwerte und Eigenvektore
[Ev,Ew]=spec(Aq);
Ew1=sqrt(Ew)
Phi=clean(Ev)

