figure(11)
clf(11)

n=0:1:255;
x=cos(2*pi*n/16/6.4)+cos(2*pi*n*2/8/6.4)+randn(1,256);
subplot(2,1,1);stem(n,x);
title('signal x(n)')

X=dft(x,256);
magX=abs(X);

subplot(2,1,2);stem(n,magX);
title('Samples of DTFT Magnitude')