%%frequency response function
starts = -10;
ends = 70;
n = (starts:1:ends)';
h = zeros(size(n));
h(0<=n) = 1/7;
h(n>6) = 0;
omega = (0:0.01:4*pi)';
H = freqresp(h,omega,starts);
subplot(2,1,1),plot(omega,abs(H));
subplot(2,1,2),plot(omega,angle(H));
function H = freqresp(h, omega, startindex)
   H = 0;
   for k=1:size(h)
      H = H + h(k)*exp(-1j*omega*(k-startindex));
   end
end
