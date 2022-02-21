%%Sample space:
   step = 1;
   starts = -10;
   ends = 70;
   n = (starts:1:ends)';
%%Signals
   u = zeros(size(n));
   u(n>=0) = 1;
   x = u.*exp(1j*pi/10*n);
   subplot(2,2,1),stem(n,real(x)),title('Real(X[n])');
   subplot(2,2,2),stem(n,imag(x)),title('Img(X[n])');
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
   subplot(2,2,3),stem(n,real(y)),title('Real(Y[n])');
   subplot(2,2,4),stem(n,imag(y)),title('Img(Y[n])');

 %%Calculating A and phi
   A = abs(y); %since original magnitude is 1, tested by abs(y./x) == abs(y)
   phi = angle(y./x);
 %% choosing large value of array to avoid transients
   A_num = A(50);
   phi_num = phi(50);
   disp(phi_num);
   disp(A_num);
