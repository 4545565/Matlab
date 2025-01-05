ws=[0.4*pi,0.7*pi];
wp=[0.25*pi,0.8*pi];
Rp=1;As=40;
[N,wn]=cheb2ord(wp/pi,ws/pi,Rp,As);
[b,a]=cheby2(N,As,ws/pi,'stop') 