b=[2,13/12,5/4,2/3];
format short;
k0=b(1);
k=poly2rc(b)'
delta=impseq(0,0,5);
hdirect=filter(b,1,delta)
hlattice=k0.*(latcfilt(k,delta))