% walk towards best visible peer, to support in prey
function jump = wsaSupportPeer(positions,candidate)
global Nw rSight2 beta
% positions[dimentions, time=1, wolves]

relDist2 = 0;
relPos = zeros(size(positions,1),1);
cost = schafferF6(positions(:,1,candidate));
for j=1:Nw
    relPosTemp = positions(:,1,j)-positions(:,1,candidate);
    relDistTemp = sum(relPosTemp.^2);
    if(relDistTemp<rSight2)
        costTemp = schafferF6(positions(:,1,j));
        if costTemp<cost
            relDist2 = relDistTemp;
            relPos = relPosTemp;
            cost = costTemp;
        end
    end
end

jump =  beta.*exp(-relDist2).*relPos;