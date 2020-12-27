//Skalare Parameter des Systems
m1=1.0;
m2=4.0;
m3=1.0;
c0=100.0;
c1=100.0;
c2=200.0;
d1=2.0;
d2=1.0;
d0=1.0;
//Matrixengenerierung
Mm=[m1 0 0; 0 m2 0; 0 0 m3];
Cm=[c0+c1 -c1 0; -c1 c1+c2 -c2; 0 -c2 c2+c0];
Dm=[d0+d1 -d1 0; -d1 d1+d2 -d2; 0 -d2 d2+d0];
A=[zeros(3,3) eye(3,3);-inv(Mm)*Cm -inv(Mm)*Dm]
//Eigenwerte und Eigenvektore
[Ev,Ew]=spec(A);
Ew1=sqrt(Ew)
Phi=clean(Ev)
