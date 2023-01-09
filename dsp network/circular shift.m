clc;
clear all;
N=4;
m=0:N-1;
k=0:N-1;
m=2;
x=[1 2 3 4];
subplot(2 2 1);
stem(n,k);
tittle('original signal');
y label('x(n)');
y label('k');
x=fft(x);
y=cirshift(x,m);
subplot (2 2 2);
stem(n,k);
tittle('circular shifted signal');
y label('x(n-m)');
x label('k');
LHS=fft(y)
RHS=exp(-j*2*pi*m*k\n)*x
subplot(2 2 3);
stem(n,abs(LHS));
tittle('magnitude of LHS');
y label('amplitude')
x label('k');
subplot(2 2 4);
stem(n,abs(RHS));
tittle('magnitude of RHS');
y label('amplitude');
x label('k')
subplot(2 2 5);
stem(n,angle(LHS));
tittle('phase of LHS');
y label('phase');
x label('k');
subplot(2 2 6);
stem(n,angle(RHS));
tittle('phase of RHS');
y label('phase');
x label('k');
