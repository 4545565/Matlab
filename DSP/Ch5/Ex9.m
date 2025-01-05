figure(9)
clf(9)

N=21;alpha=(N-1)/2;
n=0:N-1;
hd=cos(pi*(n-alpha))./(n-alpha);
hd(alpha+1)=0;
w_ham=hamming(N)';
h=hd.*w_ham;
[db,mag,pha,grd,w]=freqz_m(h,1);
H=10.^(db/10);

subplot(2,2,1)
stem(n,hd)
title('Ideal Impulse Response');xlabel('n');ylabel('hd(n)')

subplot(2,2,2)
stem(n,w_ham)
title('Hamming Window');xlabel('n');ylabel('w(n)')

subplot(2,2,3)
stem(n,h)
title('Actual Impulse Response');xlabel('n');ylabel('h(n)')

subplot(2,2,4)
plot(w/pi,H)
xline(0.2);xline(0.4);xline(0.6);xline(0.8)
yline(0.2);yline(0.4);yline(0.6);yline(0.8)
axis([0 1 0 1])
title('Magnitude Response In dB');xlabel('frequency in pi units');ylabel('Decibels')