wp=0.2;ws=0.3;Rp=1;As=15;
[N,Wn]=buttord(wp,ws,Rp,As)
[b,a]=butter(N,Wn)