num=[1,2,2,1];
den=[1,13/24,5/8,1/3];
format short;
[k,v]=tf2latc(num,den)
delta=impseq(0,0,7);
hdirect=filter(num,den,delta)
hlattice=latcfilt(k,v,delta)