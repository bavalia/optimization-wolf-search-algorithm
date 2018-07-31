% Wolf Search algorithm  
% hueristic algorithem to find global optima
clear all; clc;

% Change the current folder to the folder of this m-file.
if(~isdeployed)
  cd(fileparts(which(mfilename)));
end

% Initialise parameters
global W Wstart plotPath plotLive plotFinal;
plotPath = 1;
plotLive = 1;
plotFinal = 1;
wsaParameters;
save('Wstart','Wstart');


% Simulate WSA
% #to-edit, pre-fixed Wstart used
load Wstart;
wsaSimulate;


% Plotting 
if (plotFinal && ~plotLive)
    figure(1); clf;
    wsaPlot(W(:,end,:));
end

if (plotPath)
    figure(2); clf;
    wsaPlot(W);
end

    