clc;
clear;
clf();

//Terminal velocity of object
//Fnet = ma => mg - bv = ma => dv/dt = g -bv/m
//Soln. v(t) = mg(1-e^(-bt/m))/b


g = 9.8; b = 1; m = 1;
function Vdash=f(t,V)
    Vdash= g-(b/m)*V
endfunction
t=[0:0.1:10]
t0=0
V0=0
V=ode(V0,t0,t,f)
plot(t,V,'--or')
xgrid(1,1,3)
legend(['Terminal Velocity'],4)
xtitle('Terminal elocity', 'Time', "Velocity")


