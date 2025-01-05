figure(7)
clf(7)
subplot(1,1,1)
x=[1,1,1,1];N=16;k=0:1:N-1;
x=[x,zeros(1,N-4)];
X=dft(x,N);
magX=abs(X);phaX=angle(X)*180/pi;
subplot(2,1,1);plot(k,magX,'--');
hold on
stem(k,magX);
xlabel('k');ylabel('|X(k)|');
title(sprintf('Magnitude of the DFT:N=%d',N));
hold off
