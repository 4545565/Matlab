figure(4)
clf(4)
function[]=DFSofZ(N)
k = 0:1:N-1;
wk = 2*pi*k/N;
zk = exp(1i*wk);
Xk = (zk)./(zk-0.7);
xn = real(idfs(Xk,N));%只取实部，去掉产生的虚部误差
xtilde = xn'*ones(1,8); % 画出8个周期
xtilde = (xtilde(:))';
stem(0:N*8-1,xtilde);
axis([0,40,-0.1,1.5]);xlabel('n');ylabel('xtilde(n)');
title(sprintf('N=%d',N))
end
subplot(2,2,1);DFSofZ(5)
subplot(2,2,2);DFSofZ(10)
subplot(2,2,3);DFSofZ(20)
subplot(2,2,4);DFSofZ(40)