figure(9)
clf(9)

N=100;
n=0:1:N-1;n2=0:1:N-1;
x=cos(0.48*pi*n)+cos(0.52*pi*n);
y2=[x(1:1:10),zeros(1,N-10)];
subplot(2,1,1);stem(n2,y2);
title(sprintf('signal x(n),0<=n<=9 and %d zeros',N-10));xlabel('n')

Y2=dft(y2,N);
magY2=abs(Y2(1:1:fix(N/2)+1));
k2=0:1:fix(N/2);w2=2*pi/N*k2;

subplot(2,1,2);plot(w2/pi,magY2);
hold on;stem(w2/pi,magY2);
title('DTFT Magnitude');xlabel('frequency in pi units')
hold off