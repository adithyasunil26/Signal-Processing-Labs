%generating array of x values ranging from -10 to 10 with increments of 0.001 and
%0.1
x1 = (-10:0.001:10);
x2 = (-10:0.1:10);

%plotting U(x-2)for both increment values
plot(x1, (x1-2)>=0);
hold on
plot(x2, (x2-2)>=0);
hold off

%labels for axes
xlabel('x') 
ylabel('U(x-2)') 

%legend
legend('increments of 0.001 ','increments of 0.1')