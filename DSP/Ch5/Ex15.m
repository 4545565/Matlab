figure(15)
clf(15)

w1=0;w2=0.3*pi;delta1=0.01;
w3=0.4*pi;w4=0.7*pi;delta2=0.005;
w5=0.8*pi;w6=pi;delta3=0.001;
f=[w2,w3,w4,w5]/pi;
m=[1,0.5,0];
dev=[delta1,delta2,delta3];

[N,fo,ao,weights]=remezord(f,m,dev)
h=remez(N,fo,ao,weights);

[db,mag,pha,grd,w]=freqz_m(h,1);
delta_w=2*pi/1000;
w1i=floor(w1/delta_w)+1;w2i=floor(w2/delta_w)+1;
w3i=floor(w3/delta_w)+1;w4i=floor(w4/delta_w)+1;
w5i=floor(w5/delta_w)+1;w6i=floor(w6/delta_w)+1;
Asd=-max(db(w5i:w6i))

subplot(211)
stem(0:N,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)');
subplot(212)
plot(w/pi,db)
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel("Decibels")
xline(0.3);xline(0.4);xline(0.7);xline(0.8)
yline(0);yline(-60)
axis([0 1 -80 5])
grid