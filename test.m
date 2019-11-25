vocabList = getVocabList();
word_indices=[];
email_contents='i am a big guy haha , hah ,!';
l=0;
while ~isempty(email_contents)

    [str, email_contents] = ...
       strtok(email_contents, ...
              [' @$/#.-:&*+=[]?!(){},''">_<;%' char(10) char(13)]);
   
    str = regexprep(str, '[^a-zA-Z0-9]', '');

    try str = porterStemmer(strtrim(str)); 
    catch str = ''; continue;
    end;

    if length(str) < 1
       continue;
    end

    for i = 1:length(vocabList)
        if strcmp(str,vocabList{i})
            word_indices = [word_indices; i];
            break;
        end
    end        

    if (l + length(str) + 1) > 78
        fprintf('\n');
        l = 0;
    end
    fprintf('%s ', str);
    l = l + length(str) + 1;

end
