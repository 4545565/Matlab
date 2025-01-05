figure(21)
clf(21)

h=fir1(30,125/500,boxcar(31));

Fs=1000;f1=100;f2=150;
m=1024;
w=exp(-1i*2*pi*(f2-f1)/(m*Fs));
a=exp(1i*2*pi*f1/Fs);

y=fft(h,1000);
z=czt(h,m,w,a);

fy=(0:length(y)-1)'*1000/length(y);
fz=(0:length(z)-1)'*(f2-f1)/length(z);
subplot(211)
plot(fy(1:500),abs(y(1:500)))
subplot(212)
plot(fz,abs(z))