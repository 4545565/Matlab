figure(3)
clf(3)
function []=DFSofSQ(L,N)
    xn = [ones(1,L), zeros(1,N-L)];
    Xk = dfs(xn,N);
    magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]);
    k = -N/2:N/2;
    stem(k,magXk);
    axis([-N/2,N/2,-0.5,max(magXk)+0.5])
    xlabel('k'); ylabel('Xtilde(k)')
    title(sprintf('DFS of SQ. wave: L=%d, N=%d',L,N))
end
subplot(2,2,1);DFSofSQ(5,20)
subplot(2,2,2);DFSofSQ(5,40)
subplot(2,2,3);DFSofSQ(5,60)
subplot(2,2,4);DFSofSQ(7,60)