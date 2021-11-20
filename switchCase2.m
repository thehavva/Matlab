x=input('a number : ');
switch x
    case {1,3,5,7,9}
        fprintf('odd\n');
    case {2,4,6,8,0}
        fprintf('even\n');
    otherwise
        fprintf('nothing \n');
end