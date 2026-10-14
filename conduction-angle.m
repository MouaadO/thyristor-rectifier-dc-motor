phi =67.5*pi/180 ;
alpha = 1.9;
Q = tan(phi);

U=127*sqrt(2);
k = 0.136;
syms x;
sol =vpasolve(((sin(x-phi)*cos(phi)-k)*(exp((x-alpha)/Q))/(sin(alpha-phi)*cos(phi)-k))==1,x)
