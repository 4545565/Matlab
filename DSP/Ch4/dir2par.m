function [C,B,A] = dir2par(b,a)
  N = length(a);
  [r1,p1,C] = residuez(b,a);
  p = cplxpair(p1,10000000*eps);
  I = cplxcomp(p1,p);
  r = r1(I);
  K = floor(N/2); B = zeros(K,2); A = zeros(K,3);
  if K*2 == N
  for i=1:2:N-2
  Brow = r(i:1:i+1,:);
  Arow = p(i:1:i+1,:);
  [Brow,Arow] = residuez(Brow,Arow,[]);
  B(fix((i+1)/2),:) = real(Brow);
  A(fix((i+1)/2),:) = real(Arow);
  end
  [Brow,Arow] = residuez(r(N-1),p(N-1),[]);
  B(K,:) = [real(Brow) 0]; A(K,:) = [real(Arow) 0];
  else
  for i=1:2:N-1
  Brow = r(i:1:i+1,:);
  Arow = p(i:1:i+1,:);
  [Brow,Arow] = residuez(Brow,Arow,[]);
  B(fix((i+1)/2),:) = real(Brow);
  A(fix((i+1)/2),:) = real(Arow);
  end
  end
end
  function I = cplxcomp(p1,p2)
  I=[];
  for j=1:1:length(p2)
  for i=1:1:length(p1)
  if (abs(p1(i)-p2(j)) < 0.0001)
  I=[I,i];
  end
  end
  end
  I=I';
end