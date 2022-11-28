
N = 4;
n = 0:N-1;
k = 0:N-1;
m = 2; 
x =input("enter the sequence(USE BRACKETS):");
subplot(2,2,1);
stem(n,x);
title("Original signal");
ylabel('x(n)');
xlabel('K ');
X = fft(x);
y = circshift(x,m); 
subplot(2,2,2);
stem(n,y);
title("Circularly shifted signal")
ylabel('x(n-m)');
xlabel('K');
LHS = fft(y)
RHS = exp(-j*2*pi*m*k/N).*X
subplot(2,2,3);
stem(n,(LHS));
title(" LHS")
ylabel('Amp');
xlabel('K');
subplot(2,2,4);
stem(n,(RHS));
title("RHS")
ylabel('Amp');
xlabel('K');


