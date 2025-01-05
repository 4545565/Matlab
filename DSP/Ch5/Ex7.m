figure(7)
clf(7)

ws1=0.2*pi;wp1=0.35*pi;
wp2=0.65*pi;ws2=0.8*pi;
tr_width=min(wp1-ws1,ws2-wp2)
N=ceil(11*pi/tr_width)+1;
n=0:1:N;
wc1=(ws1+wp1)/2;wc2=(wp2+ws2)/2;
wn=[wc1/pi,wc2/pi];
h=fir1(N,wn,blackman(N+1));
[db,mag,pha,grd,w]=freqz_m(h,1);
deleta_w=2*pi/1000;
Rp=-min(db(wp1/delta_w+1:1:wp2/delta_w+1))
As=round(max(db(ws2/delta_w+1:1:501)))

subplot(2,1,1)
stem(n,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)')
subplot(2,1,2)
plot(w/pi,db)
xline(0.2);xline(0.35);xline(0.65);xline(0.8)
yline(0);yline(-60)
axis([0 1 -150 5])
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel('Decibels')