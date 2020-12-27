//Skalare Parameter des System mit drei Freiheitsgraden
clear;
m1 = 1.0;
m2 = 2.0;
m3 = 3.0;
c1 = 100.0;
c2 = 200.0;
eps= 1.0;
xpp = [0;0;0];
xp = [0;0;0];
x = [0;0;0];
//Bewegungsgleichungen in skalarer Form als Funktion
function [f]=LinDSys(xpp,xp,x)
f(1) = m1*xpp(1) + c1*x(1) - c1 *x(2)
f(2) = m2*xpp(2) - c1*x(1) + (c1 + c2)*x(2) - c2*x(3)
f(3) = m3*xpp(3) - c2* x(2) + c2*x(3)
endfunction
//Massenmatrix 
xpp1 = [ eps;0;0];
xpp2 = [-eps;0;0];
g1 = (LinDSys (xpp1,xp,x) - LinDSys (xpp2,xp,x))/(2.0*eps);
xpp1 = [0; eps;0];
xpp2 = [0;-eps;0];
g2 = (LinDSys (xpp1,xp,x) - LinDSys (xpp2,xp,x))/(2.0*eps);
xpp1 = [0;0; eps];
xpp2 = [0;0;-eps];
g3 = (LinDSys (xpp1,xp,x) - LinDSys (xpp2,xp,x))/(2.0*eps);
Mm = [g1,g2,g3]
//Steifigkeitsmatrix 
x1 = [ eps;0;0];
x2 = [-eps;0;0];
g1 = (LinDSys (xpp,xp,x1) - LinDSys (xpp,xp,x2))/(2.0*eps);
x1 = [0; eps;0];
x2 = [0;-eps;0];
g2 = (LinDSys (xpp,xp,x1) - LinDSys (xpp,xp,x2))/(2.0*eps);
x1 = [0;0; eps];
x2 = [0;0;-eps];
g3 = (LinDSys (xpp,xp,x1) - LinDSys (xpp,xp,x2))/(2.0*eps);
Cm = [g1,g2,g3]
