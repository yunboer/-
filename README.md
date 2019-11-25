#machine learning test  
关键词：machine learning，logistic regression，tfidf  
下载后在原文件夹中运行main.m即可得到测试结果，训练集3000，测试集2574.  
  
  
1 主文件  
main.m ：运行后将进行所有步骤，计算输出结果。  
2读取和预处理数据    
read.m：读取数据，将数据分为输入输出，将输出Y初始化为0-1型。  
clean.m：清洗输入，将数据变为小写，简写改写，去除符号，处理数字为’number’。  
3处理数据  
resetXX.m：将字符串生成300x5574矩阵。  
becomenum.m：输入字符串，输出为按原文本顺序的向量。  
getVocabList.m：获取需要被识别的1899个常用单词字符，输出单词矩阵。  
porterStemmer.m：将一个单词确认为编号，输入单词输出编号。（源代码来自https://tartarus.org/martin/PorterStemmer/，作者是Juan Carlos Lopez）
tfidf.m：输入按原文本顺序的字符矩阵，输出5574x1900的tfidf权重矩阵。  
4迭代处理  
costFunction.m：输入本次theta值，输出代价函数和代价函数的偏导数矩阵。  
5测试数据  
将最终的θ进行测试，输出格式是“准确率为__”  
  
ps.theta是5574位训练得到的θ值  
