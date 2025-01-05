figure(14)
clf(14)

ws=0.6*pi;wp=0.75*pi;Rp=0.5;As=50;
delta1=(10^(Rp/20)-1)/(10^(Rp/20)+1);
delta2=(1+delta1)*(10^(-As/20));
f=[ws/pi,wp/pi];
m=[0,1];
dev=[delta2,delta1];
[N,fo,ao,weights]=remezord(f,m,dev)

N=2*floor(N/2)
h=remez(N,fo,ao,weights);

[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;
wsi=floor(ws/delta_w)+1;wpi=floor(wp/delta_w)+1;
Asd=-max(db(1:1:wsi))
N=N+2
h=remez(N,fo,ao,weights);
[db,mag,pha,grd,w]=freqz_m(h,1);
Asd=-max(db(1:1:wsi))
Rpd=-min(db(wpi:1:501))

subplot(211)
stem(0:N,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)');
subplot(212)
plot(w/pi,db)
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel("Decibels")
xline(0.6);xline(0.75)
yline(0);yline(-50)
axis([0 1 -80 5])