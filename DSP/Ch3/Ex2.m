figure(2)
clf(2)
L = 5; N = 20;
x = [ones(1,L), zeros(1,N-L)];
xn = x' * ones(1,3);
xn = (xn(:))';
n = -N:1:2*N-1;
subplot(1,1,1);subplot(2,1,2);
stem(n,xn); xlabel('n');
ylabel('xtilde(n)')
title('Three periods of xtilde(n)')
axis([-N,2*N-1,-0.5,1.5])