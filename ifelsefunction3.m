% The cost per mile for a rented vehicle is $1.00 for the first 100 miles,
% $0.80 for the next 200 miles, and $0.70 for all miles in excess of
% 300 miles. Write MATLAB statements that determine the total cost
% and the average cost per mile for a given number of miles (stored in
% variable distance).

miles=input('enter a number of miles : ');
if (miles<=100)
    cost=miles*1.00;
elseif (miles>100 && miles<=300)   
    cost=100*1.00 + (miles-100)*0.8;
elseif (miles>300)
      cost=100*1.00 + 200*0.8 + (miles-300)*0.7;
end

fprintf('total cost : %4.3f\n',cost);
average_cost=cost/miles;
fprintf('average cost : %4.3f\n',average_cost);

