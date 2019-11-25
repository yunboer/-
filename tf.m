w=1899;
tfij=zeros(w,n);
for i=1:n
    for j=1:300
        if XX(j,i)==0
            break;
        end
        tfij(XX(j,i),i)=tfij(XX(j,i),i)+1;
    end
end
tfj=sum(tfij);