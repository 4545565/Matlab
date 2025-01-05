figure(6)
clf(6)

Wp=1; Ws=4; Rp=0.1; Rs=60;
[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs,'s')
[z,p,k]=cheb1ap(N,Rp)
ba = zp2sos(z,p,k)