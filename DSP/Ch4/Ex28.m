figure(28)
clf(28)

f=[0,0.6,0.6,1];
m=[1,1,0,0];
n=8;
[b,a]=yulewalk(n,f,m)

[h,w]=freqz(b,a,128);
plot(f,m,w/pi,abs(h),'--')