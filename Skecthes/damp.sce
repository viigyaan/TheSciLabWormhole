clear;clc;clf();
x = [0:0.1:10]
function y=f(x)
    y = exp(-0.5*x).*cos(3*x)
endfunction
y=f(x)
subplot(2,2,1)
plot(x,y,'--or')
xtitle('Damping','theta','cos')
subplot(2,2,2)
plot(x,0.5*cos(3*x),'k')
xtitle('Damping','theta','cos')

subplot(2,2,3)
plot(x,sin(3*x),'g')
xtitle('Damping','theta','sin')
subplot(2,2,4)
plot(x,cos(3*x),'m')
xtitle('Damping','theta','cos')
xgrid(1,1,3)
//legend(['damped oscillation', 'undamped oscillation'],1)

