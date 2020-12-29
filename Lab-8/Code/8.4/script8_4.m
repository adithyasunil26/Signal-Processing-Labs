N=1000;
Td=zeros(20,1);
Tf=zeros(20,1);
for k=1:20
    x=rand(k*N);
    tic
    directdft(x,k*N);
    Td(k)=toc;
    tic
    fft(x);
    Tf(k)=toc;
end
disp(Td);
figure;
plot(1000:1000:20000,Td);
hold on
plot(1000:1000:20000,Tf);

title('Time taken for directdft and fft')
xlabel('N') 
ylabel('Time taken') 
legend('directdft','fft')