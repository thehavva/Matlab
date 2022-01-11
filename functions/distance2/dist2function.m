array=[1 2 3;4 5 6; 7 8 9];
a=cell(1,length(array));
[row,col]=size(array);

for ii=1:row       
    b=distance2(array(ii,1),array(ii,2),array(ii,3));
    a{ii}=b;
end
disp(a);