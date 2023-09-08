for i=1:21
   x(i)=0.9^i ;
end
x
x =  zeros(1, 111);
x(11) = 1;
y
for i=1:111
    i
    y(i) = diff_eq(x,i);
end


n=1:111;
stem(n, y);
xlabel('n');
ylabel('h(n)');
title('h(n)');


figure
n = -10 : 100;
B = [ 1 , 0.5 ];
A = [ 1 , -1.8 *cos(pi/16) , 0.81 ];
k = filter(B,A,x)
stem(n, k);
xlabel('n');
ylabel('h(n)');
title('h(n)');
