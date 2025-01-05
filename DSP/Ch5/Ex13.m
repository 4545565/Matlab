figure(13)
clf(13)

ws1=0.2*pi;wp1=0.35*pi;wp2=0.65*pi;ws2=0.8*pi;
Rp=1.0;As=60;
delta1=(10^(Rp/20)-1)/(10^(Rp/20)+1);
delta2=(1+delta1)*(10^(-As/20));
f=[ws1/pi,wp1/pi,wp2/pi,ws2/pi];
m=[0,1,0];
dev=[delta2,delta1,delta2];
[N,fo,ao,weights]=remezord(f,m,dev)

h=remez(N,fo,ao,weights);

[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;
ws1i=floor(ws1/delta_w)+1;wp1i=floor(wp1/delta_w)+1;
ws2i=floor(ws2/delta_w)+1;wp2i=floor(wp2/delta_w)+1;
N=N+4
h=remez(N,fo,ao,weights);
Asd=-max(db(1:1:ws1i))
Rpd=-min(db(wp1i:1:wp2i))

subplot(211)
stem(0:N,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)');
subplot(212)
plot(w/pi,db)
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel("Decibels")
xline(0.2);xline(0.35);xline(0.65);xline(0.8)
yline(0);yline(-60)
axis([0 1 -80 5])