figure(16)
clf(16)

f=0:0.2:1;
m=[0,0.1,0.4,0.6,1.2,1.5];
h=remez(25,f,m,'deiierentiaor');
[db,mag,pha,grd,w]=freqz_m(h,1);

subplot(211)
stem(0:N,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)');
subplot(212)
plot(w/pi,db)
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel("Decibels")
xline(0.3);xline(0.4);xline(0.7);xline(0.8)
yline(0);yline(-60)
axis([0 1 -80 5])