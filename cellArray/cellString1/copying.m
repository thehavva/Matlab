function outputt=copying(str,start,finish,p)
jj=1;

for ii=start:finish-1
    if start==1
    outputt(jj)=str(ii);
    else
    outputt(jj)=str(ii+1);
    end

    jj=jj+1;
end
