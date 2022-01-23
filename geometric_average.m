% write a MATLAB program that will accept an arbitrary number of positive input values and calculate both the arithmetic mean (i.e., the average)
% and the geometric mean of the numbers. Use a while loop to get the input values and terminate the inputs when a user enters a negative number. 
arr=[10,5,2,5];
len=length(arr);
ii=1;
ex=1;
dex=0;
gex=0;
while(ii<=len)
   ex=ex*arr(ii);
   dex=dex+arr(ii);
   gex=gex+1/arr(ii);
   ii=ii+1;
end
geometric_mean=ex^(1/len);
average=dex/len;
harmonic=len/gex;
fprintf('geometric mean : %3.2f\naverage : %3.2f\nharmonic mean : %3.2f\n',geometric_mean,average,harmonic);
