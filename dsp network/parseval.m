clc;
x=[1,2,3,4,5];
X=fft(x);
LHS=sum(x.^2);
RHS=sum(abs(X).^2)/length(x);
disp(LHS)
disp(RHS)
