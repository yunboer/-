M=importdata('train.csv');
%���ж�ȡ�ַ����ݵ�M����
n=length(M)-1;
%����Ϊn
for i=2:n+1
    [Y0(i-1),X(i-1)]=strtok(M(i),',');
end
%����ȡ�������и��Ϊ�����������������
for j=1:n
    if strcmp(Y0(j),'spam')
        Y(j)=0;
    else
        Y(j)=1;
    end
end
clear M i j Y0;
%�����������Ϊ0-1�ͷ��࣬0��ʾ�������ţ�1��ʾ����������