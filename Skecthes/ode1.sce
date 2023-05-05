clc;
clear;
clf();
//To SOLVE DIFFERENTIAL EQUATIONS, ODE
//RADIOACTIVE DECAY LAW
//dN/dt = -yN where y is decay constant

lambda = 0.5;
function Ndash=f(t,N)
    Ndash= -lambda*N
endfunction
t=[0:0.1:10]
t0=0
N0=100
N=ode(N0,t0,t,f)
plot(t,N,'--ob')
xgrid(1,1,3)
