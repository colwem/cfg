function j = J_theta(x,theta,y)
    
 v = (x*theta'-y)

j= (v'*v)/( 2 * length(y))
