wp=0.2;ws=0.3;Rp=1;As=15;
[N,Wn]=cheb2ord(wp,ws,Rp,As)
wn=ws;
[b,a]=cheby2(N,As,wn)