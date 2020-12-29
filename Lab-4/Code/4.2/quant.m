%Quantization function
function y= quant(x,L,a,b)

%assigning zeros to vector y
y=zeros(size(x));

%running variable n from 1 to L
n=1:L;      

%generating levels 
lvl=a+(b-a)*(2*n-1)/(2*L); 
for i=1:length(x)
    diff = b-a; p = 1;
    for j=1:length(lvl) 
        if abs(x(i)-lvl(j))<diff  
                                     %checking if the difference between the element in x and 
                                     %corresponding level is less than the variable diff
            p = j;                   %assigning the index value to a variable p
            diff = abs(x(i)-lvl(j)); %updating the variable diff such that the max value gets stored
        end
        y(i) = lvl(p);               %output the level for the  corresponding element in x            
    end
end
