clear; clf;
N = 4;
Hc = 10;
NN = 1000; Dr = 1.225; ND = NN*Dr;
wk=20;

in=[1:N];
f2=figure(1);
for phi=pi/2 - .1:.001:pi/2 + .1

H0 = eye(N);
H0( 1 : ( N+1 ) : end ) = in*(wk);
H0 = H0 + Hc*eye(N);

H0( 2 : ( N+1 ) : end ) = -cos(phi)*ones(1,N-1)*ND ;
    %H0( N+1 : ( N+1 ) : end ) = -cos(phi)*ones(1,N-1)*ND;
    %H0(1,N) = -cos(phi)*ND;
    %H0(N,1) = -cos(phi)*ND;

    subplot(211);
   plot(phi,eig(H0),'.')
xlabel('phi');ylabel('eigenvalue');
   hold on;
end

dEv = diff(eig(H0));
[x,y]=hist(dEv,10);
xx=x/sum(x);
yy=y/sum(y.*xx);

subplot(212); plot(yy,xx,'-*')
%xlabel();ylabel();
saveas(f2,'fig2.png');

