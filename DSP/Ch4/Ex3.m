% Butterworth analog low pass filter
figure(3)
clf(3)
Wp=1;Ws=2;Rp=3;Rs=30;

[N,Wn]=buttord(Wp,Ws,Rp,Rs,'s');
[z,p,k]=buttap(N);

[h,w]=freqs(z,p,k);
mag=abs(h);
phase=angle(h);
subplot(2,1,1);plot(w,mag);
xlabel('frequency');title('Magnitude Part');ylabel('Magnitude')
subplot(2,1,2);plot(w,phase);
xlabel('frequency');title('Angle Part');ylabel('Radians')