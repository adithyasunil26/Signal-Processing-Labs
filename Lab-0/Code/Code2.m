%for a 3x3x2 matrix
x1=[1 2 3;4 5 6;7 8 9];
x1=cat(3,x1,[10 11 12;13 14 15;16 17 18]);
disp(avg(x1));

%for a 3x3x3 matrix
x2=cat(3,x1,[10 11 12;13 14 15;16 17 18]);
disp(avg(x2));

%for a 4*3*2 matrix
x3=[1 2 3;4 5 6;7 8 9;10 11 12];
x3=cat(3,x3,[13 14 15;16 17 18;19 20 21;22 23 24]);
disp(avg(x3));

%required function to generate the average matrix
function avgmat = avg(x)
   avgmat = mean(x,1); 
end

    


