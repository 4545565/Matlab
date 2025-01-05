figure(3)
clf(3)
a=[1,-1,0.9];b=1;

x=impseq(0,-20,120);n=-20:120;
h=filter(b,a,x);
subplot(2,1,1);
stem(n,h);
axis([-20,120,-1.1,1.1])
title('ImpulseResponse');xlabel('n');ylabel('h(n)')

x=stepseq(0,-20,120);
s=filter(b,a,x);
subplot(2,1,2);
stem(n,s)
axis([-20,120,-0.5,2.5])
title('Step Response');xlabel('n');ylabel('s(n)')

sum(abs(h))
z=roots(a);magz=abs(z)
subplot