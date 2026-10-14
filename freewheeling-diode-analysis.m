clc;clear all;
Veff=127;
Vmax=sqrt(2)*Veff;
X=15*pi/50:0.00001:pi;
n=length(X);
for i=1:1:n
    Ud(i)=2*Vmax*(1+cos(X(i)))/pi;
end
% Données fournies
%U = [175 145 105 9];
%alpha= [15*pi/50 pi/3 pi/2 9*pi/10]; % En pourcentage
N = [0 500 1000 1500 2000 2500];
alpha= [7*pi/10 6*pi/10 10.2*pi/20 7.8*pi/20 6.4*pi/20 5.4*pi/20]; % En pourcentage
% Ajustement d'une courbe polynomiale
p = polyfit(alpha, N,2); % Polynôme de degré 3
x_fit = linspace(min(alpha), max(alpha), 100); % Points pour tracer la courbe
y_fit = polyval(p, x_fit);
%plot(X,Ud);
hold on; grid on;scatter(alpha,N)
plot(x_fit, y_fit, 'r-', 'LineWidth', 1.25, 'DisplayName', 'Courbe théorique');
title('<Ud> = f(α)');
xlabel('α (rad)');
ylabel('<Ud> (V)');
grid on;