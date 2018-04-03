close
clear
set(0,'defaultaxeslinewidth',1.5)
set(0,'defaultlinelinewidth',1.5)
set(0,'defaultaxesfontsize',15)
%% Analyse des singularités
% Représentation des contraintes en fonction de la taille
% du maillage 
%% Données
% Taille de maillage
maillage = [3 5 10 20]; %[mm]
% Contraintes dans les éléments
% Matrice à 3 lignes :
%   (1) Contraintes au niveau de l'encastrement
%   (2) Contraintes au niveau du trou en (0,250) 
%   (3) Contraintes dans la partie au-dessus du trou en
%   (0,300)
contraintes_elements = [53.42 43.64 33.13 24.4;...
    19.32 19.24 19.05 18.83;...
    19.42 19.33 19.11 18.74]; %[MPa]

figure
hold on
grid on
plot(maillage, contraintes_elements,'-o')
legend('Encastrement','Trou (0,250)', 'Au-dessus du trou (0,300)') 
xlim([0 maillage(end)+5])
ylim([0 55]) 
xlabel('Taille du maillage [mm]','FontSize',12)
ylabel('\sigma_{max} [MPa]','FontSize',12)
hold off
orient 'Landscape'
print('-fillpage','singularities','-dpdf')