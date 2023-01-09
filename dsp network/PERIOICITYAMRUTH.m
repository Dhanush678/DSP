clc
clear all
close all
N=4;
n=1:N;
k=1:N;
t=0:3;
x(n)=[2,3,7,10];

LHS= fft(x);
subplot(2,2,1)
stem(t,abs(LHS))
title("magmitude of LHS")
ylabel(amplitude');
xlabel('k');


subplot(2,2,2)
stem(t,angle(LHS))
title("phase of LHS")
ylabel('phase');
xlabel('k');


RHS=fft(x(mod(n+N,N+1)+1));
subplot(2,2,3)
stem(t,abs(RHS))
title("magmitude of RHS")
ylabel(amplitude');
xlabel('k');

subplot(2,2,4)
stem(t,angle(RHS))
title("phase of RHS")
ylabel('phase');
xlabel('k');

