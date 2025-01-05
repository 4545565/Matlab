figure(14)
clf(14)
% b) plot x((n-3))15
n=0:10;x=[10*0.8.^n,zeros(1,4)];

n1=-15:29;x1=[zeros(1,15),x,zeros(1,15)];
subplot(2,2,1);stem(n1,x1);
title('Original x(n)');xlabel('n')

x2=[x,x,x];
subplot(2,2,3);stem(n1,x2);
title('Periodic extension');xlabel('n')

x3=[x2(43:45),x2(1:42)];
subplot(2,2,2);stem(n1,x3);
title('Periodic shift');xlabel('n')

x4=x3.*[zeros(1,15),ones(1,15),zeros(1,15)];
subplot(2,2,4);stem(n1,x4);
title('Circular shift');xlabel('n')