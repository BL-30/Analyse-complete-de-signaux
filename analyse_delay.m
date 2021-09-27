
%manip 4.1
fe = 44100
Tau = 0.25*fe
g = 0.9
x= [1 zeros(1,10*fe)];

b=[1];
a=[1 zeros(1,Tau-1) g];
y=filter(b,a,x);
figure(8);
stem([1:1:length(y)]/fe,y);

%Manip 4.2
TDF=fftshift(fft(y));
module_exp=abs(TDF)/sqrt(length(TDF));
module_exp_dB= 10*log10(module_exp);
phase_exp=angle(TDF);

N = length(TDF);
f = (-N/2:(N/2-1))*fe/N;
moduleTh_dB=20*log10(1./sqrt(1+2*g*cos(2*pi*f*Tau)+g^2));
phaseTh=-atan(-g*sin(2*pi.*f*Tau)./(1+g*cos(2*pi.*f/fe*Tau)));

figure(9);
clf;
plot(f,20*log10(module));
plot(f,module_exp_dB,f,moduleTh_dB);
axis([-30 30 -100 100]);

figure(10);
clf;
plot(f,20*log10(phase));
plot(f,phase_exp,f,phaseTh);
axis([-30 30 -100 100]);
