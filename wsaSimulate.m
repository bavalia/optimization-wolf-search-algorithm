% simulation of wolf search algorithm


global Nw Ni step velocity Pa %xrange yrange
global Wstart % wolf positions
global W % wolf position history 
global Npa
global plotPath plotLive
Npa = 0; %number of mutation occured

t = 1; % corrent iteration
W(:,1,:) = Wstart; % wolves over time [dimentions, time, wolves]

if plotLive
    figure(1); clf; % live moving figure with each iteration
    load('schafferF6PlotData');
    contour(X,Y,xycosts);
    %axis([-xrange/2 xrange/2 -yrange/2 yrange/2]);
    axis manual;
    hold on;
    o = scatter(0,0,'o');
    p = scatter(W(1,1,:), W(2,1,:),'x','k');
    set(1,'visible','on');
end

for (t=1:Ni)
    % do not save history, if no need to plot path
    if ~plotPath
        time = t;
        t = 1;
    end
            
    for wi=1:Nw
        tempPos = W(:,t,wi);
        
        % prey initiatively, newton method
        %tempPos = wsaNeuton
        
        % If a visible peer has better possition, move towards it
        tempPos = tempPos + wsaSupportPeer(W(:,t,:),wi);
        
        %random walk, towards better possition, pray initiatively
        tempPos = wsaRandImproveWalk(tempPos);
        
        % escape, when threat found
        if (rand<Pa)
            tempPos = tempPos + wsaEscape*velocity*step;
            %disp('escaping');
            Npa = Npa+1;
        end
        
        if plotPath
            W(:,t+1,wi) = tempPos; % save history
        else W(:,1,wi) = tempPos; % override 
        end
        
    end
    
    if plotLive
        set(p,'visible','off');
        p = scatter(W(1,t,:), W(2,t,:),'x','k');
        set(1,'visible','on');
    end
end

