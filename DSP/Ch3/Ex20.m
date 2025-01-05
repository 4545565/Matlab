figure(20)
clf(20)

A=0.8*exp(1i*pi/6);
W=1.031*exp(-1i*pi*0.05);
M=91;
z2=A*(W.^(-(0:M-1)));
zplane([],z2.')