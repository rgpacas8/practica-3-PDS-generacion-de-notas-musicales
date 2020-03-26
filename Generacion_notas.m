%Ricardo Gonzalez Pacas
%ie706818@iteso.mx
% GENERACION DE NOTAS MUSICALES
%PROCESAMIENTO DIGITAL DE SEÑALES DR JORGE PARDIÑAS MIR
close all
clear all
pause on
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
%%%%%%%%%%%%%      NOTA DO     %%%%%%
f_DO=130.8;
sin_0_DO=sin(2*pi*f_DO*tiempo_grafica);
sin_1_DO=.5*    sin(2*pi*f_DO*2*tiempo_grafica);
sin_2_DO=.8.*sin(2*pi*f_DO*3*tiempo_grafica);
sin_3_DO=.2.*sin(2*pi*f_DO*4*tiempo_grafica);
sin_total_DO=sin_0_DO+sin_1_DO+sin_2_DO+sin_3_DO;
Resultado_DO=sin_total_DO.*y1;
x_sound_DO=audioplayer(Resultado_DO,Fs);
x_sound_DO_2=audioplayer(Resultado_DO,Fs);
%play(x_sound_DO);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA RE     %%%%%%
f_RE=146.8;
sin_0_RE=sin(2*pi*f_RE*tiempo_grafica);
sin_1_RE=.5.*    sin(2*pi*f_RE*2*tiempo_grafica);
sin_2_RE=.8.*sin(2*pi*f_RE*3*tiempo_grafica);
sin_3_RE=.2.*sin(2*pi*f_RE*4*tiempo_grafica);
sin_total_RE=sin_0_RE+sin_1_RE+sin_2_RE+sin_3_RE;
Resultado_RE=sin_total_RE.*y1;
x_sound_RE=audioplayer(Resultado_RE,Fs);
x_sound_RE_2=audioplayer(Resultado_RE,Fs);

%play(x_sound_RE);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA MI     %%%%%%
f_MI=164;
sin_0_MI=sin(2*pi*f_MI*tiempo_grafica);
sin_1_MI= .5.*   sin(2*pi*2*f_MI*tiempo_grafica);
sin_2_MI=.8.*sin(2*pi*3*f_MI*tiempo_grafica);
sin_3_MI=.2.*sin(2*pi*4*f_MI*tiempo_grafica);
sin_total_MI=sin_0_MI+sin_1_MI+sin_2_MI+sin_3_MI;
Resultado_MI=sin_total_MI.*y1;
x_sound_MI=audioplayer(Resultado_MI,Fs);
x_sound_MI_2=audioplayer(Resultado_MI,Fs);

%play(x_sound_MI);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA FA     %%%%%%
f_FA=174.6;
sin_0_FA=sin(2*pi*f_FA*tiempo_grafica);
sin_1_FA=.5.*    sin(2*pi*f_FA*2*tiempo_grafica);
sin_2_FA=.8.*sin(2*pi*f_FA*3*tiempo_grafica);
sin_3_FA=.2.*sin(2*pi*f_FA*4*tiempo_grafica);
sin_total_FA=sin_0_FA+sin_1_FA+sin_2_FA+sin_3_FA;
Resultado_FA=sin_total_FA.*y1;
x_sound_FA=audioplayer(Resultado_FA,Fs);
x_sound_FA_2=audioplayer(Resultado_FA,Fs);

%play(x_sound_FA);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA SOL     %%%%%%
f_SOL=196;
sin_0_SOL=sin(2*pi*f_SOL*tiempo_grafica);
sin_1_SOL= .5.*   sin(2*pi*f_SOL*2*tiempo_grafica);
sin_2_SOL=.8.*sin(2*pi*f_SOL*3*tiempo_grafica);
sin_3_SOL=.2.*sin(2*pi*f_SOL*4*tiempo_grafica);
sin_total_SOL=sin_0_SOL+sin_1_SOL+sin_2_SOL+sin_3_SOL;
Resultado_SOL=sin_total_SOL.*y1;
x_sound_SOL=audioplayer(Resultado_SOL,Fs);
x_sound_SOL_2=audioplayer(Resultado_SOL,Fs);
x_sound_SOL_3=audioplayer(Resultado_SOL,Fs);
%play(x_sound_SOL);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA LA     %%%%%%
f_LA=220;
sin_0_LA=sin(2*pi*f_LA*tiempo_grafica);
sin_1_LA=  .5.*  sin(2*pi*f_LA*2*tiempo_grafica);
sin_2_LA=.8.*sin(2*pi*f_LA*3*tiempo_grafica);
sin_3_LA=.2.*sin(2*pi*f_LA*4*tiempo_grafica);
sin_total_LA=sin_0_LA+sin_1_LA+sin_2_LA+sin_3_LA;
Resultado_LA=sin_total_LA.*y1;
x_sound_LA=audioplayer(Resultado_LA,Fs);
x_sound_LA_2=audioplayer(Resultado_LA,Fs);

%play(x_sound_LA);%reproduccion de sonido
%pause(1)
%%%%%%%%%%%%%      NOTA SI     %%%%%%
f_SI=246.9;
sin_0_SI=sin(2*pi*f_SI*tiempo_grafica);
sin_1_SI= .5.*   sin(2*pi*f_SI*2*tiempo_grafica);
sin_2_SI=.8.*sin(2*pi*f_SI*3*tiempo_grafica);
sin_3_SI=.2.*sin(2*pi*f_SI*4*tiempo_grafica);
sin_total_SI=sin_0_SI+sin_1_SI+sin_2_SI+sin_3_SI;
Resultado_SI=sin_total_SI.*y1;
x_sound_SI=audioplayer(Resultado_SI,Fs);
x_sound_SI_2=audioplayer(Resultado_SI,Fs);

%play(x_sound_SI);%reproduccion de sonido
%pause(3)



play(x_sound_DO);
pause (.5)
play(x_sound_DO_2);
pause (.5)
play(x_sound_SOL);
pause (.5)
play(x_sound_SOL_2);
pause (.5)
play(x_sound_LA);
pause (.5)
play(x_sound_LA_2);
pause (.5)
play(x_sound_SOL_3);
pause (2.5)
play(x_sound_FA);
pause (.5)
play(x_sound_FA_2);
pause (.5)
play(x_sound_MI);
pause (.5)
play(x_sound_MI_2);
pause (.5)
play(x_sound_RE);
pause (.5)
play(x_sound_RE_2);
pause (.5)
play(x_sound_DO);
pause (3)

play(x_sound_SOL);
pause (.5)
play(x_sound_SOL_2);
pause (.5)
play(x_sound_FA);
pause (.5)
play(x_sound_FA_2);
pause (.5)
play(x_sound_MI);
pause (.5)
play(x_sound_MI_2);
pause (.5)
play(x_sound_RE);
pause (2.5)
play(x_sound_SOL);
pause (.5)
play(x_sound_SOL_2);
pause (.5)
play(x_sound_FA);
pause (.5)
play(x_sound_FA_2);
pause (.5)
play(x_sound_MI);
pause (.5)
play(x_sound_MI_2);
pause (.5)
play(x_sound_RE);
pause (3)

play(x_sound_DO);
pause (.5)
play(x_sound_DO_2);
pause (.5)
play(x_sound_SOL);
pause (.5)
play(x_sound_SOL_2);
pause (.5)
play(x_sound_LA);
pause (.5)
play(x_sound_LA_2);
pause (.5)
play(x_sound_SOL_3);
pause (2.5)
play(x_sound_FA);
pause (.5)
play(x_sound_FA_2);
pause (.5)
play(x_sound_MI);
pause (.5)
play(x_sound_MI_2);
pause (.5)
play(x_sound_RE);
pause (.5)
play(x_sound_RE_2);
pause (.5)
play(x_sound_DO);
pause (3)