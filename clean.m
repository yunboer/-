X=lower(X);
%�Ѿ��������Сд
str1={'what''s';'''s';'''ve';'can''t';'cannot';'''m';'''re';'''d';'ain''t';
    'couldn''t';'didn''t';'doesn''t';'don''t';'hadn''t';'hasn''t';'''ll';'n''t'};
str2={'what is';' is';' have';'can not';'can not';' am';' are';' will';'are not';
    'can not';'do not';'do not';'do not';'have not';'have not';' will';' not'};
for i=1:n  
    for j=1:17    
        X(i)=strrep(X(i),str1(j),str2(j));
    end
end
%�Ѿ��Ӽ�д��ʽת���ɳ����ʽ
X = regexprep(X, '[^a-zA-Z0-9]', ' ');
%str3={'[';']';'.';'(';'{';'!';')';',';';';':';'?';'}';'��';']';'''';'%%';'\\';'/';'"'};
%str4={' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' '};
%for i=1:n  
%    for j=1:19    
%        X(i)=strrep(X(i),str3(j),str4(j));
%    end
%end
%�Ѿ����еķ���ȥ��,ps��һ��ʼ������regexprep����
X= regexprep(X, '[0-9]+', 'number');
%�Ѿ����е����ֻ���number
clear i j str1 str2;