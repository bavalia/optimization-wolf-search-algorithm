
% schafferF6 cost function grid
x = [-10: .2: 10];
[X,Y] = meshgrid(x,x);
schafferF6_2D = @(x,y) schafferF6([x,y]);
xycosts = arrayfun(schafferF6_2D, X,Y);

surf(X,Y,xycosts)
contour(X,Y,xycosts)
%save('schafferF6PlotData','X','Y','xycosts');