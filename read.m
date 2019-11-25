M=importdata('train.csv');
%按行读取字符数据到M矩阵
n=length(M)-1;
%长度为n
for i=2:n+1
    [Y0(i-1),X(i-1)]=strtok(M(i),',');
end
%将读取的向量切割分为输入与输出两组数据
for j=1:n
    if strcmp(Y0(j),'spam')
        Y(j)=0;
    else
        Y(j)=1;
    end
end
clear M i j Y0;
%处理输出数据为0-1型分类，0表示垃圾短信，1表示非垃圾短信