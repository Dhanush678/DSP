clc;
x=[1 2 3 4];
x=fft(x)
LHS=sum(x.^2);
RHS=sum(abs(x).^2)/length(x);
N=length(x)
disp(LHS);
disp(RHS);
