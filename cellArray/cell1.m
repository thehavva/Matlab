% The cell function allows you to preallocate empty cell arrays of the specified
% size

a=cell(2,2);
a{1,1}=[1 2 3;4 5 6;7 8 9];
a{1,2}=(81);
a{2,1}='I am Havva';
a{2,2}=[];

a{3,3}=(61); 
%   If a value is assigned to a cell array element that does not currently exist, the element will be automatically created, and any additional cells necessary to preserve
%   the shape of the array will be automatically created
a(3,:)=[]; %It is possible to delete the entire third row with the statement
celldisp(a); %specific disp function for cell array