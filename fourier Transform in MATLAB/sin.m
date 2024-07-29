
y=0:0.001:10;

g=sin(2*pi*100*y);
plot(abs(fft(g)));