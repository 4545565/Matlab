x=[1,1,1,1];N=8;
w1=2*pi/N;k=0:N-1;
x=[x,zeros(1,N-4)];
X=dft(x,N);
magX=abs(X),phaX=angle(X)*180/pi