ws=[0.2*pi,0.5*pi];
wp=[0.3*pi,0.4*pi];
Rp=3;As=18;
[N,wn]=buttord(wp/pi,ws/pi,Rp,As);
[b,a]=butter(N,wn)