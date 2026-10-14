Um=sqrt(2)*127;
Ueff=127;
syms alpha;
teta=2.9588;
E=108.35;
k=E/Um;
% Calcule la valeur théorique de Ud en fct de alpha
ud_th = ((sqrt(2) * Ueff / pi) * (cos(alpha) - cos(teta) + k * (pi + alpha -teta)) + (2 * sqrt(2) / pi) * Ueff * cos(alpha))/2;
fplot(ud_th, 'b');
hold on;
% traçage de la courbe pratique
alpha_data = [7*pi/10 6*pi/10 10.2*pi/20 7.8*pi/20 6.4*pi/20 5.4*pi/20 ];
Ud_data = [0 35 60 95 120 145];
% Polynomial fit
p = polyfit(alpha_data, Ud_data, 4);
alpha_fit = linspace(min(alpha_data), max(alpha_data), 100);
Ud_fit = polyval(p, alpha_fit);
plot(alpha_fit, Ud_fit, 'r');
hold off;
xlabel('\alpha (rad)');
ylabel('Ud (V)');
title('Ud=f(\alpha)');
legend('courbe theorique ', 'courbe pratique ');
axis([5.4*pi/20 pi 0 180]);

