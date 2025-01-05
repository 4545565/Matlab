figure(17)
clf(17)
% High speed convolution
conv_time=zeros(1,500);
fft_time=zeros(1,500);
for N=1:500
    tc=0;tf=0;
    L=2*N-1;
    nu=round((log10(L)/log10(2))+0.45);
    L=2^nu;
    for I=1:10
        h=randn(1,L);x=rand(1,L);
        t0=clock;
        y1=conv(h,x);
        t1=etime(clock,t0);tc=tc+t1;t0=clock;
        y2=ifft(fft(h,L).*fft(x,L));
        t2=etime(clock,t0);
        tf=tf+t2;
    end
    conv_time(N)=tc/10;
    fft_time(N)=tf/10;
end
n=1:500;
plot(n(25:500),conv_time(25:500),'r',n(25:500),fft_time(25:500),'b')