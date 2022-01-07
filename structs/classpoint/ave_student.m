function ave=ave_student(arr)
begin=0;
for ii=1:length(arr)
    begin=begin+arr(ii);
end
ave=begin/length(arr);