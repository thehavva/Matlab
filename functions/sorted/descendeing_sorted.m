function out=descendeing_sorted(v,len)
out=ones(1,len);
for ii=1:len
    [value,index]=max(v);
    v(index)=0;
    out(ii)=value;
end
end