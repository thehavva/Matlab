arr1=[1 2 3; -2 -3 -4; 3 4 5];
arr2=arr1(1,:); % this means 1. row and all columns;
arr3=arr1(:,1:2:3); % this means all rows and columns with this method;
% another example
a1=[1 2 3 4; 5 6 7 8; 9 10 11 12];
a2=a1(2:end,2:end);

str = ['The value of pi = ' num2str(pi)]; % num2str fonction converts number to string
disp (str);
