   
 %%Sample space:
   step = 1;
   starts = -10;
   ends = 25;
   n = (starts:1:ends)';
 %Signals
   x5 = 3*cos((2*pi)/10*n);
   x6 = 2*cos((2*pi)/12*n+pi/4);
 %%Plot:
   figure;
   subplot(2,1,1),stem(n,x5),xlabel('Samples (n)'),ylabel('Magnitude'),title('Sampled x5'),axis([-10 15 -3 3]);
   subplot(2,1,2),stem(n,x6),xlabel('Samples (n)'),ylabel('Magnitude'),title('Sampled x6'), axis([-10 15 -3 3]);
   