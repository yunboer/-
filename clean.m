X=lower(X);
%把句子整理成小写
str1={'what''s';'''s';'''ve';'can''t';'cannot';'''m';'''re';'''d';'ain''t';
    'couldn''t';'didn''t';'doesn''t';'don''t';'hadn''t';'hasn''t';'''ll';'n''t'};
str2={'what is';' is';' have';'can not';'can not';' am';' are';' will';'are not';
    'can not';'do not';'do not';'do not';'have not';'have not';' will';' not'};
for i=1:n  
    for j=1:17    
        X(i)=strrep(X(i),str1(j),str2(j));
    end
end
%把句子简写形式转换成常规格式
X = regexprep(X, '[^a-zA-Z0-9]', ' ');
%str3={'[';']';'.';'(';'{';'!';')';',';';';':';'?';'}';'¨';']';'''';'%%';'\\';'/';'"'};
%str4={' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' ';' '};
%for i=1:n  
%    for j=1:19    
%        X(i)=strrep(X(i),str3(j),str4(j));
%    end
%end
%把句子中的符号去除,ps：一开始不会用regexprep函数
X= regexprep(X, '[0-9]+', 'number');
%把句子中的数字换成number
clear i j str1 str2;