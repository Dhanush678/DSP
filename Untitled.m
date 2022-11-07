% sine wave generation:
f=10;
t=0:0.0001:1;
y=sin(2*pi*f*t);
subplot(4,1,1)
plot(t,y)
%sampling code
fs=20;
ts=1/fs;
n=0:ts/f:1;
sample=sin(2*pi*f*n);
subplot(4,1,2)
stem(n,sample)
% stem(n,sample)
fs=7;
ts=1/fs;
n=0:ts/f1:1;
sample=sin(2*pi*f*n);
subplot(4,1,3)
stem(n,sample)
fs=40;
ts=1/fs;
n=0:ts/f:1;
sample=sin(2*pi*f*n);
subplot(4,1,4)
stem(n,sample)

