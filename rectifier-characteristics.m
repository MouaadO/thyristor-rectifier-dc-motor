clc;clear all;
Um=sqrt(2)*127;
phi =67.5*pi/180 ;
Q = tan(phi);
syms x;
alpha=0.8:0.01:7*pi/10;
n=length(alpha);
h=0.0553;
a=391.841813388739;b=-2951.49210701715;c=4635.11315328859;
for i=1:1:n
    N(i)=a*alpha(i)^2+b*alpha(i)+c;
    k(i)=h*N(i)/Um;
soll(i) =vpasolve(((sin(x-phi)*cos(phi)-k(i))/(sin(alpha(i)-phi)*cos(phi)-k(i)))*(exp((x-alpha(i)))/Q)==1,x);
sol(i)=mod(soll(i),2*pi);
if (double(sol(i))<pi)
Ud(i)=Um*(cos(alpha(i))-cos(sol(i)) +k(i)*(pi+alpha(i)-sol(i)))/pi;
else
   Ud(i)=Um*(cos(alpha(i))-cos(sol(i)-pi) +k(i)*(pi+alpha(i)-(pi-sol(i))))/pi;
end
U(i)=double(Ud(i));
end

plot(alpha,Ud)