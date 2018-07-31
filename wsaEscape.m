% escape function for wolf search algo
function escape = wsaEscape()
scaleOfRange = 1/8;

global xrange yrange
escape = [(rand-.5)*xrange*scaleOfRange
            (rand-.5)*yrange*scaleOfRange];