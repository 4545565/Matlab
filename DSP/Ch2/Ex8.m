b=[1,0];
a=[1,-0.9];
w=(0:1:100)*pi/100;
figure(8);

[H,w]=freqz(b,a,w);
magH=abs(H);phaH=angle(H);
subplot(2,1,1);plot(w/pi,magH);
grid
xlabel('frequency Unit:pi');
ylabel('Magnitude Response');

subplot(2,1,2);plot(w/pi,phaH/pi);
grid
xlabel('frequency Unit:pi');
ylabel('Phase Unit:pi');
title('Phase Response');