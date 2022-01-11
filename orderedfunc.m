array=[9, 4, 6, 2, -1, 5];
disp(array);
for ii=1:length(array)
    for jj=ii+1:length(array)
       if(array(ii)>array(jj))
       temp=array(ii);
       array(ii)=array(jj);
       array(jj)=temp;
       end
    end
end
disp(array);