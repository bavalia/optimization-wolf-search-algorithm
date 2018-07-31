%Plot the movement of the wolves from history
function wsaPlot(W)
%W[dimentions, time, wolves]

clf;
%costFunctionPlot;
load('schafferF6PlotData');
contour(X,Y,xycosts);
hold on

scatter(0,0,'o');

for w=1:size(W,3)
    scatter(W(1,end,w),W(2,end,w),'x','k');
    plot(W(1,:,w),W(2,:,w));
end