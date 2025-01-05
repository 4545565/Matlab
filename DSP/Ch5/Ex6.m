figure(6)
clf(6)

wp=0.2*pi;ws=0.3*pi;As=50;
tr_width=ws-wp;
N=ceil((As-7.95)/(14.36*tr_width/(2*pi))+1)+1
n=0:1:N;
beta=0.1102*(As-8.7)
wc=(ws+wp)/2;
h=fir1(N,wc/pi,kaiser(N+1,beta));
[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;
As=-round(max(db(ws/delta_w+1:1:501)))

subplot(2,1,1)
stem(n,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)')
subplot(2,1,2)
plot(w/pi,db)
xline(0.2);xline(0.3)
yline(0);yline(-50)
axis([0 1 -80 5])
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel('Decibels')