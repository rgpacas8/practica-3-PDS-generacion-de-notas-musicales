close all
clear all

[nota_5a,Fs] = audioread('string5a.wav');
x=[.1393 .2662 .5575 .7666 1.185 1.568 2.122 3.217 4.026 4.49 5.129 5.4];
y=[.3965 .3041 .2507 .1819 .1312 .09198 0.06186 .04401 .03253 .01529 0 0];
p=polyfit(x,y,9);
x1=0:5.4/238464:5.4;
y1=polyval(p,x1);
%%%%%%%%%%%%%%%%%%%%%%%Transformada de fourier%%%%%%%%%%5
FFT_5a=fft(nota_5a);
%%%%%%%%%%Vector tiempo de la grafica del sonido%%%%%%%%%%%%%%%%%5
tiempo_nota_5a=size(nota_5a,1)/Fs;% 5.4 segundos
tiempo_grafica=0:1/Fs:tiempo_nota_5a;
%%%%%%%%%%%%%5Valores de la transformada de fourier%%%%%%
sin_0=.5.*sin(2*pi*129*tiempo_grafica);
sin_1=.8.*sin(2*pi*595*tiempo_grafica);
sin_2=sin(2*pi*1190*tiempo_grafica);
sin_3=.2.*sin(2*pi*1785*tiempo_grafica);
sin_total_5a=sin_0+sin_1+sin_2+sin_3;
Resultado=sin_total_5a.*y1;
RESULTADO=fft(sin_0);
x_sound=audioplayer(Resultado,Fs);
play(x_sound);%reproduccion de sonido
%%%%%%%%%%%%Grafica de la señal de sonido%%%%%%%%%%%%%%%%%%%
subplot(3,1,1)
plot(x,y);
subplot(3,1,2)
plot(tiempo_grafica(2:end),nota_5a,'red');
title('string5a.wav');
xlabel('Tiempo, s') 
ylabel('Amplitud')
subplot(3,1,3)
plot(x1(1:end),y1,'green');
title('string5a.wav');
xlabel('Tiempo, s') 
ylabel('Amplitud')
figure
plot(abs(FFT_5a)),xlim([0 4000]);%grafica del espectro de fecuencia
title('fft string5a.wav');
xlabel('Frecuencia') 
ylabel('|H(w)|')
figure
plot(tiempo_grafica,Resultado);
figure
plot(abs(RESULTADO)),xlim([0 4000]);