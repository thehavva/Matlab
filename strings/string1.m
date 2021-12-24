name=['havva'; 'yilma']; % it creates 2 dimensional array with two input
n1=name(1,:);
n2=name(2,:);

name2='havva yilmaz ';
size1=size(name2);
size2=size(deblank(size(name2)));

%Function strcat concatenates two or more strings horizontally, ignoring any
% trailing blanks but preserving blanks within the strings.
result=strcat(name2,' bir harikadir.');



