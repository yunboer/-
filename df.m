w=1899;
dfij=zeros(w,n);
for i=1:n
    for j=1:300
        if XX(j,i)==0
            break;
        end
        dfij(XX(j,i),i)=1;
    end
end
dfij=sum(dfij,2);
dfi=n;