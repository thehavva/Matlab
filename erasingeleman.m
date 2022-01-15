a=[1,4,6,7,3,3,8,1,12];
a=sort(a);
b=a;
for ii=1:length(a)-1
    if b(ii)==b(ii+1)
        a(ii)=[];
    end
end

disp(a);