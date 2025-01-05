ws=[0.3*pi,0.75*pi];
wp=[0.4*pi,0.6*pi];
Rp=1;As=40;
[N,wn]=ellipord(wp/pi,ws/pi,Rp,As);
[b,a]=ellip(N,Rp,As,wn)