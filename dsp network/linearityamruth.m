 clear all
>>  close all
>>  % input
>>  x1= [2 3 4 5];
>>  x2=[12,13,14,15];
>>  X1= fft(x1);
>>  X2=fft(x2);
>>  a1=3;
>> a2=3;
>> t=0:3;
>>  LHS=fft((a1*x1))+(a2*x2)
LHS =

   78 +  0i   33 +  6i   36 +  0i   39 -  6i

>>  subplot(2,2,1)
>> stem(t,abs(LHS))
>> title ('magnitude')
>> ylabel('amplitude')
>> xlabel('k')
>>
>> subplot (2,2,2)
>> stem(t, angle(LHS))
>> title("phase of LHS");
>> ylabel("angle");
>> xlabel("k");
>>
>> RHS=(a1*X1)+(a2*X2)
RHS =

   204 +   0i   -12 +  12i   -12 +   0i   -12 -  12i

>> subplot(2,2,3)
>> stem(t,abs(RHS))
>> title("magnitude");
>> ylabel("amplitude");
>> xlabel("k");
>>
>> subplot(2,2,4)
>> stem(t,angle(RHS))
>> title("phase");
>> ylabel("angle");
>> xlabel("k");
