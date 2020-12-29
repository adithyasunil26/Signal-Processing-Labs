function [N,ROC,C,S] = roc_cs(p)
    N=1;
    q = sort(p);
    prev_el=0;
    curr_el=0;
    
    for z=1:length(q)
        curr_el = abs(q(z));
        if curr_el~=prev_el
            N=N+1;
            prev_el=curr_el;
        end
    end
    
    ROC = zeros(N,2);
    C = zeros(N,1);
    S = zeros(N,1);
    
    C(N)=1;
    
    prev_el=0;
    curr_el=0;
    temp=1;
    flag=0;
    
    for z=1:length(q)
        curr_el=abs(q(z));
        if curr_el~=prev_el
            if flag==0 && curr_el>=1
                flag=1;
                S(temp)=1;
            end
            ROC(temp,1)=prev_el;
            ROC(temp,2)=curr_el;
            prev_el=curr_el;
            temp=temp+1;
        end
    end
    
    ROC(temp,1)=prev_el;
    ROC(temp,2)=Inf;
    
    if prev_el<=1
        S(temp)=1;
    end
end
