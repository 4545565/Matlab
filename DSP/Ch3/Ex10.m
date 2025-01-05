figure(10)
clf(10)

N=100;
n=0:1:N-1;
x=cos(0.48*pi*n)+cos(0.52*pi*n);
subplot(2,1,1);stem(n,x);
title('signal x(n,0<=n<=99');xlabel('n')

X=dft(x,N);
magX=abs(X(1:1:fix((N+1)/2)));
k=0:1:fix((N+1)/2)-1;w=2*pi/100*k;

subplot(2,1,2);plot(w/pi,magX);
title('DTFT Magnitude');xlabel('frequency in pi units')