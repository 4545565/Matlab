figure(5)
clf(5)

wp=0.2*pi;ws=0.3*pi;
tr_width=ws-wp;
N=ceil(6.6*pi/tr_width)+1
n=0:1:N;
wc=(ws+wp)/2;
h=fir1(N,wc/pi);
[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;
Rp=-(min(db(1:1:wp/delta_w+1)))
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