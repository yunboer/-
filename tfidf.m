function [ tfidf ] = tfidf( XX )
w=1899;
n=size(XX,2);
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
%tf
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
%df
tfidf=zeros(w,n);
for i=1:n
    if tfj(i)==0;
            continue;
    end
    for j=1:w
        if dfij(j)==0;
            continue;
        end
        tfidf(j,i)=tfij(j,i)/tfj(i)*log(dfi/dfij(j));
    end
end
tfidf=[ones(1,n);tfidf];
%tfidfæÿ’Û
end