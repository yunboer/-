function [ jVal,gradient ] = costFunction( theta )
global x1;
global y1;
global m;
h=1./(1+exp(-theta'*x1));
%––œÚ¡ø
jVal = -1/m*(y1*log(h')+(1-y1)*log(h'));
for i=1:1900
gradient(i)=1/m*((h-y1)*x1(i,:)');
end
end


