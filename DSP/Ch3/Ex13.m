figure(13)
clf(13)
% Circular shift graphical display
n=0:10;x=10*0.8.^n;
% a) plot x((n+4))11
n1=-11:21;x1=[zeros(1,11),x,zeros(1,11)];
subplot(2,2,1);stem(n1,x1);
title('Original x(n)');xlabel('n')

x2=[x,x,x];
subplot(2,2,3);stem(n1,x2);
title('Periodic extension');xlabel('n')

x3=[x2(4+1:33),x(1:4)];
subplot(2,2,2);stem(n1,x3);
title('Periodic shift');xlabel('n')

x4=x3.*[zeros(1,11),ones(1,11),zeros(1,11)];
subplot(2,2,4);stem(n1,x4);
title('Circular shift');xlabel('n')