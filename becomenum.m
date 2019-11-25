function [word_indices] = becomenum(contents)
%l = 0;
vocabList = getVocabList();
word_indices = [];
while ~isempty(contents)

    [str, contents] = ...
       strtok(contents, ...
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

%    if (l + length(str) + 1) > 78
 %       fprintf('\n');
  %      l = 0;
  %  end
  %  fprintf('%s ', str);
  %  l = l + length(str) + 1;

end

end

