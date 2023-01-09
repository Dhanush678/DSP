clc;
x1=[1,2,3,1];
x2=[4,3,2,2];
if length(x1)>length(x2)
    N=length(x1)
else
    N=length(x2)
 end
x1=[x1 zeros(1,N-length(x1))]
x2=[x2 zeros(1,N-length(x2))]

X1=fft(x1)
X2=fft(x2)

circon=ifft(X1.*X2)
stem(circon)
ylabel("amplitude");
xlabel("n--->");
