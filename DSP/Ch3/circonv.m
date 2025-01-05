function y=circonv(x1,x2,N)
    if (length(x1)>N||length(x2)>N)
        error('Inputs must be less than N')
    end
    x1=[x1,zeros(1,N-length(x1))];x2=[x2,zeros(1,N-length(x2))];
    m=0:1:N-1;
    x2=x2(mod(-m,N)+1);
    H=zeros(N,N);
    for n=1:1:N
        H(n,:)=cirshift(x2,n-1,N);
    end
    y=x1*H';
end