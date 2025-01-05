figure(18)
clf(18)

Nmax=2048;
fft_time=zeros(1,Nmax);
for n=1:1:Nmax
    x=rand(1,n);
    t=clock;
    fft(x);
    fft_time(n)=etime(clock,t);
end

n=1:1:Nmax;top=max(fft_time);
plot(n,fft_time,'.')
xlabel('N');ylabel('Time in Sec.');title('FFT execution times')
text(2100,top,'o(N*N)')
text(2100,top*3/4,'o(N*N*3/4)')
text(2100,top/2,'o(N*N/2)')
text(2100,top/3,'o(N*N/3)')
text(2100,top/4,'o(N*N/4)')
text(2100,min(fft_time),'o(N*logN)')