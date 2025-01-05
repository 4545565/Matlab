figure(27)
clf(27)

f=[0:0.1:0.8,1];
m=[0,0,1,1,0,0,1,1,0,0];
n=10;
[b,a]=yulewalk(n,f,m)

[h,w]=freqz(b,a,120);
plot(f,m,w/pi,abs(h))
grid;title('Magnitude Response');
xlabel('Digital frequency in pi units');