% question 4.1

t=-9:0.5:9;
for i=1:length(t)
if (t(i)>=0)
    y(i)=-3*t(i)^2+5;
elseif (t(i)<0)
    y(i)=3*t(i)^2+5;
else
    error('not a exact number');
end
end

for i=1:length(t)
    fprintf('y(%d) is equal to %d\n',i,y(i));
end

% question 4.2 //vectorization
t=-9:0.5:9;
index=t<0;
y1(index)=3*t(index).^2+5;
y1(~index)=-3*t(~index).^2+5;
isequal(y,y1);
