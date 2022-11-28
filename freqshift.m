N = 4;  
n = 0:N-1;
l = 2; 
x = input("enter the sequence(USE BRACKETS):");
X = fft(x);
subplot(2,2,1);
stem(n,(X));
title("X(k)");
ylabel('Amp');
xlabel('K');

Y = circshift(X, l);
subplot(2,2,2);
stem(n,(Y));
title("Circularly Shifted X(k)");
ylabel('Amp');
xlabel('K');
LHS = ifft(Y);
subplot(2,2,3);
stem(n,LHS);
title("Plot of LHS");
ylabel('AMP');
xlabel('n');
RHS = exp(j*2*pi*l*n/N).*x;
subplot(2,2,4);
stem(n,RHS);
title("Plot of RHS");
ylabel('AMP');
xlabel('n')