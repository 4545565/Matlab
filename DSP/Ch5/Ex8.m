figure(8)
clf(8)

N=46;As=60;n=0:1:N;
beta=0.1102*(As-8.7)+0.3
wc1=pi/3;wc2=2*pi/3;
wn=[wc1/pi,wc2/pi];
h=fir1(N,wn,'stop',kaiser(N+1,beta));
[db,mag,pha,grd,w]=freqz_m(h,1);

subplot(2,1,1)
stem(n,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)')
subplot(2,1,2)
plot(w/pi,db)
xline(1/3);xline(2/3)
yline(0);yline(-60)
axis([0 1 -80 5])
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel('Decibels')