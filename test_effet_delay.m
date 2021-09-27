%% Programme de test de l'effet de delay

%parametres de l'effet
tau=    0.25*Fe;
g=      0.9 ;
K=10;

%Chargement du fichier son
[x,Fe]=audioread('piano_chord.wav');

%application de l'effet
tic;
y1=effet_delay_filtre(x,tau/Fe,g,K,Fe);
temps=toc;
fprintf('Temps de calcul: %f s\n',temps);
soundsc(y1,Fe)
tic;
%y2=effet_delay_filtre(x,tau,g,10,Fe);
%temps=toc;
%fprintf('Temps de calcul: %f s\n',temps);
%soundsc(y2,Fe)

