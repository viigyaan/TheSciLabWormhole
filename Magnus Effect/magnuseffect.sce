//MAGNUS EFFECT - PROJECTILE MOTIOM

clear;clc;
g=10;m=1;
km=0.01;bm=0.01;
w=18;
t = [0:0.05:6];

function xdot=fx(t,x)
    xdot=[x(2);-km*w*x(4)+bm*x(2);
    x(4);km*w*x(2)+bm*x(4);
    x(6);-g+bm*x(6)]
endfunction

t0=0
x0=[0;30;0;25;0;30] 
//1st, 3rd and 5th terms represent the postion coordinates x,y and z
//2nd, 4th and 6th terms represent the velocity in those axis respectively

x = ode(x0,t0,t,fx)
X=x(1,:);
Y=x(3,:);
Z=x(5,:);

scatter3d(X(:),Y(:),Z(:),"markerEdgeColor", "black", "markerFaceColor", [rand() rand() rand()])
legend("Football going in different path")

//--GOAL POSTS--//
x1=linspace(80,120,10)
y1=linspace(200,200,10)
z1=linspace(0,20,10)
[X1,Z1] = meshgrid(x1,z1)
Y1=0.*X1+0.*Z1+200
surf(X1,Y1,Z1,'facecol','yellow','edgecolr','blue')
//--------//
