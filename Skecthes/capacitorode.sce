clc;
clear;
clf();

//Charging of a capacitor
//dQ/dt = 1/R(E-Q/C)  Soln. Q(t) = Q0(1-e^(-t/RC))

R = 0.5;
E = 2;
C = 4;

function Qdash=f(t,Q)
    Qdash= (E-(Q/C))/R
endfunction
t=[0:0.1:10]
t0=0
Q0=0
Q=ode(Q0,t0,t,f)
plot(t,Q,'--ob')
xgrid(1,1,3)
legend(['Charging of capacitor'])
xtitle('Capacitor', 'Time', "Charge")
