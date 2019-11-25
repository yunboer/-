as=optTheta'*x2;
q=0;
for i=1:2574
    if as(i)>=0.5;
        as(i)=1;
    else
        as(i)=0;
    end
end
for i=1:2574
    if as(i)==y2(i)
        q=q+1;
    end
end
q=q/2574
fprintf('准确率为%d',q);