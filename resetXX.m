XX=zeros(300,n);
for i=1:n
    x=char(X(i));
    strx=becomenum(x);
    m=length(strx);
    for j=1:m
        XX(j,i)=strx(j);
    end
end
clear strxx i j m x