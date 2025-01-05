function y = parfilter(C,B,A,x)
[K,~] = size(B);
N = length(x);
w = zeros(K+1,N);
w(1,:) = filter(C,1,x);
for i = 1:1:K
    w(i+1,:) = filter(B(i,:),A(i,:),x);
end
y = sum(w);
end