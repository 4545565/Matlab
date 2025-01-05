figure(12)
clf(12)

N=128;
n=1:1:N;x=sin(120*pi*n/256);
X=dft(x,N);magX=abs(X);
subplot(2,1,1);stem(n,magX);
title('fs=256Hz,N=128')

N=130;
n=1:1:N;x=sin(120*pi*n/256);
X=dft(x,N);magX=abs(X);
subplot(2,1,2);stem(n,magX);
title('fs=256Hz,N=130')