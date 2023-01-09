t=0:.1:10
y=sin(t)
figure(1)
plot(t,y)
a=cos(t)
figure(2)
plot(t,a)
c=-10:.01:10
x=(ones(size(c))).*(c>-10& c<-5)+(2*ones(size(c))).*(c>0& c<5)+(3*ones(size(c))).*(c>8&c<10)+c.*(c>5 & c<8)
figure(3)
plot(c,x)
d=-10:1:10
g=(ones(size(d))).*(d>-10& d<-5)+(2*ones(size(d))).*(d>0& d<5)+(3*ones(size(d))).*(d>8&d<10)+d.*(d>5 & d<8)
figure(4)
stem(d,g)
n=0:4;
 x_ts2=2*sin(2*sym('pi')*n*ts2/T);
 subplot(2,2,3);
 stem(n,x_ts2);
 title('Equal to Nq');
 xlabel('n');
 ylabel('x(n)');

 n=0:10;
 x_ts3=2*sin(2*pi*n*ts3/T);
 subplot(2,2,4);
 stem(n,x_ts3);
 title('less than Nq');
 xlabel('n');
 ylabel('x(n)'); 