%%Sample space:
   step = 1;
   starts = -10;
   ends = 70;
   n = (starts:1:ends)';
%%Frequency response
   h = zeros(size(n));
   H = 0;
   h(0<=n) = 1/7;
   h(n>=6) = 0;
   omega = pi/10;
   for k=0:6       
       H = H + 1/7*exp(-1j*omega*k);
   end
   disp(abs(H));
   disp(angle(H));