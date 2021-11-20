% Let a be an array of integers in the MATLAB workspace. Compute a new array b,
% such that each element at index i of the new array b is the product of all the numbers in the
% original array a except the one at i.
%a = [1, 2, 3, 4, 5];
% a = [3, 2, 0];
% b=zeros(size(a));
% for ii=1:length(a)
%     b(ii)=1;
%     for jj=1:length(a)
%         if ii~=jj
%             b(ii)=b(ii)*a(jj);
%         end
%     end
% end
% %disp(num2str(b));

% Let a be an array of numbers and k be a number in the MATLAB workspace.
% Write a MATLAB script which determines whether any two numbers from a add up to k

% a = [10, 15, 3, 7];
% k=17;
% count=0;
% for ii=1:length(a)
%     for jj=ii+1:length(a)
%         if (a(ii)+a(jj)==k)
%             count=count+1;
%         end
%     end
% end
% 
% if(count>0)
%     disp('true');
% end

% Let A be a 2 × n array in the MATLAB workspace where the elements at the i-th
% column of A correspond to the coordinates of i-th point in the 2D space. Write a MATLAB
% script which computes the nearest k points stored in the array A from any given point x.
% 
% A = [0 5 3 -1 0.5; 0 4 1 0 0.75];
% x = [2 3]';
% k = 3;
% 
% for i=1:length(A)
%     r(i)=sqrt((A(1,i)-x(1))^2+(A(2,i)-x(2))^2);
% end
% for i=1:k
%     [mval,mind]=min(r);
%     r(mind)=1e9;
%     fprintf('%d \n', A(:,mind));
% end

% Let a be an array of integers in the MATLAB workspace. Write a MATLAB script
% which computes a new array b where each element of b is the number of smaller elements to
% the right of that element in the array a.
% 
% a = [3, 4, 9, 6, 1];
% b=zeros(size(a));
% for i=1:length(a)
%     count=0;
%     for j=i+1:length(a)
%         if a(i)>a(j)
%             count=count+1;
%         end
%     end
%     b(i)=count;
% end

% Let a be an array in the MATLAB workspace. Write a MATLAB script which
% computes the lowest positive integer (say b) that does not exist in the array a. Note that the
% array can contain duplicates and negative numbers as well.

% a = [3, 4, -1, 1];
% [val,index]=min(a);
% found=0;
% for i=1:length(a)
%     val=val+1;
%     if (val~=a(i) && val>0)
%         found=val;
%     end
% end
% 
% fprintf('min value is %d\n',found);

% A fixed point in an array is defined as the element whose value is equal to its index.
% Let a be a sorted array of distinct elements in the MATLAB workspace. Write a MATLAB
% script which finds a fixed point, if one exists. Otherwise, the script would display ’No fixed
% point exists in the given list’ to the user

%cla = [6, 0, 3, 40];
% a = [2, 5, 7, 8];
% found=0;
% for i=1:length(a)
%     if (a(i)==i)
%         found=i;
%     end
% end
% if found==0
%     disp('No fixed point exists in the given list\n');
% else
%     disp(num2str(found));
% end

%  Let a be an array of length n + 1 whose elements belong to the set {1, 2, ..., n} in
% the MATLAB workspace. Write a MATLAB script which finds an element with duplicate.

a=[2 1 4 5 6 3 2 7 5 6 1 9];
count=0;

for i=1:length(a)
    for j=i+1:length(a)
        if(a(i)==a(j))
            count=count+1;
            disp(num2str(a(i)));
        end
    end
end
fprintf('\n%d is number of dublicated numbers.\n',count);

    



