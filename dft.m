x=input("enter the sequence(Use Brackets):");
N=4;
t=0:N-1:10;
grid on

subplot(311)
stem(t,x);
xlabel("Time")
ylabel("Amplitude")
grid on

subplot(312)
stem(0:N-1,abs(fft(x)));
xlabel("Time")
ylabel("Amplitude")
grid on

subplot(313)
stem(0:N-1,angle(fft(x)));
xlabel("Time")
ylabel("Amplitude")


