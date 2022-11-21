x=input("enter the sequence(use brackets):")
N=length(x);
for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+x(n)*exp(-1j*2*pi*(n-1)*(k-1)/N);
    end
end
subplot(411)
stem(t,x);
xlabel("Time")
ylabel("Amplitude")
title("Digital Signal");
grid on
subplot(412)
stem(t,X);
xlabel("Time")
ylabel("Amplitude")
title("DFT Signal");

grid on
subplot(413)
stem(t,angle(X));
xlabel("Time")
ylabel("Amplitude")
title("Phase change in Signal");

grid on
for n=1:N
    
    for K=1:N
        x(n)=x(n)+X(k)*exp(j*2*pi*(n-1)*(k-1)/N);
    end
end
disp("idft");x
for n=1:N-1
    x(n)=x(n)/4;
end
subplot(414)
stem(t,(x));
xlabel("Time")
ylabel("Amplitude")
title("IDFT Signal");

grid on

