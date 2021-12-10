function out=sorted(v,len)
out=ones(1,len);
for ii=1:len
    [value,index]=min(v);
    v(index)=inf;
    out(ii)=value;
end
end
