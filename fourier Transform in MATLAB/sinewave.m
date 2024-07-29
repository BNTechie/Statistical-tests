t  = [ 0 : 1 : 40 ];           % Time Samples
f  = 500;                       % Input Signal Frequency
fs = 8000;                    % Sampling Frequency
x = sin(2*pi*f/fs*t);        % Generate Sine Wave  
figure(1);
stem(t,x,'r');                  % View the samples
figure(2);
stem(t*1/fs*1000,x,'r');  % View the samples
hold on;
plot(t*1/fs*1000,x);        % Plot Sine Wave
fftLength = 1024;  
sigLength = length(x);
win = rectwin(sigLength)'; 
y = fft(x.*win,fftLength);   
figLength = fftLength/2 + 1;  
plot([1:figLength]*fs/(2*figLength),abs(y(1:figLength))); 
%plot([1:figLength]*fs/(2*figLength),20*log10(abs(y(1:figLength)))); 
