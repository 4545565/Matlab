figure(12)
clf(12)

wp=0.2*pi;ws=0.3*pi;Rp=0.25;As=50;
delta1=(10^(Rp/20)-1)/(10^(Rp/20)+1)
delta2=(1+delta1)*(10^(-As/20))
f=[wp/pi,ws/pi]
m=[1,0];
dev=[delta1,delta2];
[N,fo,ao,weights]=remezord(f,m,dev)

h=remez(N,fo,ao,weights);

[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;wsi=ws/delta_w+1;wpi=wp/delta_w;
Asd=-max(db(wsi:1:501))
N=N+4
h=remez(N,fo,ao,weights);
[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;wsi=ws/delta_w+1;wpi=wp/delta_w;
Asd=-max(db(wsi:1:501))
Rpd=-min(db(1:1:wp/delta_w+1))

subplot(211)
stem(0:N,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)');
subplot(212)
plot(w/pi,db)
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel("Decibels")
xline(0.2);xline(0.3)
yline(0);yline(-50)
axis([0 1 -80 5])