N=4;  
n=1:N;
k=1:N;
t=0:3;
x(n) =input("enter the sequence(USE BRACKETS):");

subplot(2,2,1)
stem(t,x(n))
title("Signal")
ylabel('AMP');
xlabel('K');

LHS = fft(x(n));
subplot(2,2,2)
stem(t,LHS)
title("LHS")
ylabel('AMP');
xlabel('K');
RHS = fft(x(mod(n+N,N+1)+1));
subplot(2,2,3)
stem(t,(RHS))
title("RHS")
ylabel('Amp');
xlabel('K');
