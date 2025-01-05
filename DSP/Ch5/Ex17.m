figure(17)
clf(17)

f=[0.05,0.95];m=[1,1];N=51;n=N-1;

h=remez(n,f,m,'hilbert');

[db,mag,pha,grd,w]=freqz_m(h,1);
subplot(2,1,1);stem(0:n,h);title('Impulse Response');
xlabel('n');ylabel('h(n)');axis([0,N,-0.8,0.8])
set(gca,'XTickMode','manual','XTick',[0,N])
set(gca,'YTickMode','manual','YTick',-0.8:0.2:0.8);
subplot(2,1,2);plot(w/pi,mag);title('Magnitude Response')
xlabel('frequency in pi units');ylabel('|H|')
set(gca,'XTickMode','manual','XTick',[0,f,1])
set(gca,'YTickMode','manual','YTick',[0,1]);grid
axis([0,1,0,1.5])