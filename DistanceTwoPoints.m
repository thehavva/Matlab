% this programme find distance between two points.

x1=input('enter x axis of point 1 : ');
y1=input('enter y axis of point 1 : ');
z1=input('enter z axis of point 1 : ');
x2=input('enter x axis of point 2 : ');
y2=input('enter y axis of point 2 : ');
z2=input('enter z axis of point 2 : ');
d=sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2);
distance=['the distance of two points is ',num2str(d)];
disp(distance);