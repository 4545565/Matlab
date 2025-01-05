% Chebyshev type I analog low pass filter
Wp=1; Ws=2; Rp=3; Rs=30;
[N,Wn]=cheb1ord(Wp,Ws,Rp,Rs,'s')
[z,p,k]=cheb1ap(N,Rp)
ba = zp2sos(z,p,k)