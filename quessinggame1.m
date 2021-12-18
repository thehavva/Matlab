% guessing game from 1 to 6

point=0,count=0;
while count<3
   quess=input('enter a number between 1 to 6 pelease ');
   select=randi(6,1,1);
   count=count+1;
if quess==select
    fprintf('quess input is %d, select input is %d, congratulations\n',quess,select);
    point=point+10;
else
    fprintf('quess input is %d, select input is %d, sorry\n',quess,select);
    point=point-10;
end
end
fprintf('YOUR SCORE IS ');
disp(num2str(point));
