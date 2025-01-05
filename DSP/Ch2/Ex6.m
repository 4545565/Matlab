figure(6)
clf(6)
b=[1,0];
a=[1,-0.9];
[H,w]=freqz(b,a,100);
magH=abs(H);
phaH=angle(H);

subplot(2,1,1);plot(w/pi,magH);grid
subplot(2,1,2);plot(w/pi,phaH/pi);grid