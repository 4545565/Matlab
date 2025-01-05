function y = casfilt(sos,x)
A = sos(:,4:6);
B = sos(:,1:3);
[K,~] = size(B);
N = length(x);
w = zeros(K+1,N);
w(1,:) = x;
for i = 1:1:K
    w(i+1,:) = filter(B(i,:),A(i,:),w(i,:));
end
y = w(K+1,:);
end