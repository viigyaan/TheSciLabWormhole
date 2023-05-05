clc;
clear;
clf();

//SECOND ORDER DIFFERENTIAL EQUATION
//2nd order ODE -> 2 1st order ODE
//Damped Harmonic Oscillator
// Fnet = ma => -kx-bv = ma => -kx - bdx/dt = m d2x/dt2
//d2x/dt2 + b/m dx/dt + k/m x = 0 .... (1)

// We separate 2nd Order ODE in 2 1st order ODE.
// We use x = x1 st dx/dt = dx1/dt = x2
//Hence eq1 becomes:
//d/dt(dx1/dt) + b/m x2 + k/m x1 = 0
//dx2/dt + b/m x2 + k/m x1 = 0

//Now we have 2 equations:
// dx1/dt = x2 .... (2)
//dx2/dt = -b/m x2 - k/m x1 ......(3)
//x=[x1,x2]


k=4; b = 1; m = 1;
function xdash=f(t,x)
    xdash= [x(2); -(b/m)*x(2) - (k/m)*x(1)]
endfunction
t=[0:0.1:10]
t0=0
x0=[1;0]
x=ode(x0,t0,t,f)
disp(x)

plot(t,x(1,:),'--or')
xgrid(1,1,3)
legend(['Terminal Velocity'],4)
xtitle('Terminal elocity', 'Time', "Velocity")


