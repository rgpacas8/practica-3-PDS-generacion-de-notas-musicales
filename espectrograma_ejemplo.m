close all; clear all;

[nota_5a,Fs] = audioread('string5a.wav');
tiempo_nota_5a=size(nota_5a,1)/Fs;% 5.4 segundos
tiempo_grafica=0:1/Fs:tiempo_nota_5a;
dede=nota_5a(1:end);
np=2^11;
spectrogram(dede,2000,0,5000,Fs,'yaxis');
xlim([0 5]); colorbar; shading interp;
ylim([0 6]);
title('Espectrograma');


%%%%%%%%%%%SI
% sin_0=.5.*sin(2*pi*123*tiempo_grafica);
% sin_1=.8.*sin(2*pi*493*tiempo_grafica);
% sin_2=sin(2*pi*246*tiempo_grafica);
% sin_3=.2.*sin(2*pi*987*tiempo_grafica);
% sin_total_5a=sin_0+sin_1+sin_2+sin_3;