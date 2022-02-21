%%Sample space:
   step = 1;
   starts = -10;
   ends = 70;
   n = (starts:1:ends)';
%%Signals
   figure;
   u = zeros(size(n));
   u(n>=0) = 1;
   x = u.*cos(pi/10*n);
   stem(n,x);
   hold on;
   h = zeros(size(n));
   h(0<=n) = 1/7;
   h(n>6) = 0;
   %z = conv(h,x);
   y = zeros(size(n));
   for i=1:81
       y(i)=0;
       for k=0:6
           if (i-k)>0
              y(i) = y(i)+x(i-k);
           end
           
       end
       y(i) = y(i)*1/7;
   end
   stem(n,y);
   hold off;
   %stem(n,z);

   