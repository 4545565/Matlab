wp=0.2;ws=0.3;Rp=1;As=15;
[N,Wn]=cheb1ord(wp,ws,Rp,As)
[b,a]=cheby1(N,Rp,Wn)