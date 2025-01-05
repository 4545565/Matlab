den=[1,13/24,5/8,1/3];
format short;
k=tf2latc(1,den)
delta=impseq(0,0,5);
hdirect=filter(1,den,delta)
hlattice=latcfilt(k,1,delta)