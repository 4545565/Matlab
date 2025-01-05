for i = 1:9
    N=pow2(i+1);
    x=[[1,1,1,1]/4,zeros(1,N-4)];
    X=dfs(x,N);
    subplot(3,3,i);
    stem(0:N-1,abs(X))
    axis([0,N-1,0,1])
    subtitle(sprintf("N=%d",N))
end
sgtitle("Amplitude Spectrum of x=[1,1,1,1]/4")