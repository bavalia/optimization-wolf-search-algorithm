% wolf search algo, random walk, update only if cost improves
function shift = wsaRandImproveWalk(posOld)
global rSight2 velocity

costOld = schafferF6(posOld);

%if x,y not symmetric in scale, then change function accordingly
posNew = posOld + velocity*sqrt(rSight2)*[rand*2-1; rand*2-1];

if schafferF6(posNew)<=costOld
    shift = posNew;
else shift = posOld;
end
