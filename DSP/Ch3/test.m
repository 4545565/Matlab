figure(1)
x1=rand(1,100);
X1=dft(x1,length(x1));
x2=x1(1:10:100);
X2=dft(x2,length(x2));
x3=zeros(1,100);
x3(1:10:end)=x2;
X3=dft(x3,length(x3));
subplot(321);stem(x1)
subplot(322);plot(abs(X1))
subplot(323);stem(x2)
subplot(324);plot(abs(X2))
subplot(325);stem(x3)
subplot(326);plot(abs(X3))

figure(2)
subplot(311)
X2_=zeros(1,100);
for i=1:length(x2)
    X2_=X2_+[X1(10*i+1:1:100),X1(1:1:10*i)];
end
plot(abs(X2_))
subplot(312)
X2_=X2_(1:1:10);
plot(abs(X2_))
subplot(313)
X3_=[];
for i=1:10
    X3_=[X3_,X2_];
end
plot(abs(X3_))