figure(15)
clf(15)
% Circular shift example
% a) plot x((n-6))15
n=0:1:10;x=10*0.8.^n;
y=cirshift(x,6,15);
n=0:14;x=[x,zeros(1,4)];

subplot(2,1,1);stem(n,x);
title('Original sequence')
xlabel('n');ylabel('x(n)')

subplot(2,1,2);stem(n,y);
title('Circularly shifted sequence, N=15')
xlabel('n');ylabel('x((n-6) mod 15)')