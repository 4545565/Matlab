figure(5)
clf(5)
% x=[1,1,1,0];N=4;w=2*pi/N;k=0:N-1;
x=[1,1,1,1];N=49;
x=[x,zeros(1,N-4)];k=0:1:N-1;
X=dft(x,N);
magX=abs(X);phaX=angle(X)*180/pi;

subplot(2,1,1)
plot(k,magX,'--');
% axis([-0.1,4.1,-1,5]);
hold on
stem(k,magX);

subplot(2,1,2)
plot(k,phaX,'--');
hold on
stem(k,phaX)