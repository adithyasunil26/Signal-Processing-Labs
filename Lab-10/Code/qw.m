n=1:1:365;

for k=1:length(n)
    y(k)=1-(364/365).^(n(k)*(n(k)-1)/2);
end
figure;
plot(n,y);
title("Birthday paradox");
xlabel("Number of people(n)");
ylabel("Probability of 2 people having the same birthday");