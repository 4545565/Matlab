figure(7)
clf(7)
b=[1,0];
a=[1,-0.9];
[H,w]=freqz(b,a,200,'whole');
magH=abs(H(1:101));
phaH=angle(H(1:101));

w=w(1:101)
subplot(2,1,1);plot(w/pi,magH);grid
subplot(2,1,2);plot(w/pi,phaH/pi);grid