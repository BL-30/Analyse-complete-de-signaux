%% Programme de test de l'effet de reverberation

%parametres de l'effet

%Chargement du fichier son
[x,Fe]=audioread('nylon-guitar.wav');

% Chargement de la réponse impulsionnelle estimée

load('Ryx.mat') % A compléter

%application de l'effet :
tic;
y=effet_reverb(x,Ryx);
temps=toc;
fprintf('Temps de calcul: %f s\n',temps);
fprintf('Tic: %f s\n',tic);
fprintf('Toc: %f s\n',toc);

%lecture du son original et avec effet
soundsc(x,Fe);
pause(4)
soundsc(y,Fe);


