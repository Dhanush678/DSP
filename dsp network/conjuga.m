clc;
N=4;
n=1:N;
k=1:N;
xn=[2,3,4,5];
Xk=fft(xn);
lhs=Xk;
subplot(2,2,1);
stem(n,abs(lhs));
title('magnitude of lhs');
ylabel('amplitude');
xlabel('k');
subplot(2,2,2);
stem(n,angle(lhs));
title('phase of lhs');
ylabel('angle');
xlabel('k');
k=2:N;
rhs=Xk(1);
for k=2:N
  rhs(k)=fft(conj(Xk(N+2-k)));
end
subplot(2,2,3);
stem(n,abs(rhs));
title('magnitude of rhs');
ylabel('amplitude');
xlabel('k');
subplot(2,2,4);
stem(n,angle(rhs));
title('phase of rhs');
ylabel('angle');
xlabel('k');