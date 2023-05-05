//SIMULATING CHARGED PARTICLE MOTION IN E AND B FIELD
clear;clc;clf();

q=1;m=1;qm=q/m;
Ex=0;Ey=1;Ez=0;
Bx=0;By=0;Bz=1;
t=linspace(0,40,2000)

function xdot = fx(t,x)
    xdot = [x(2);qm*(Ex+x(4)*Bz-x(6)*By);
    x(4);qm*(Ey+x(6)*Bx-x(2)*Bz);
    x(6);qm*(Ez+x(2)*By-x(4)*Bx)]
endfunction

t0=0
x0=[0;0;0;0;10;0]
x=ode(x0,t0,t,fx)
X=x(1,:);Y=x(3,:);Z=x(5,:);
scatter3d(X(:),Y(:),Z(:),"markerEdgeColor","black","markerFaceColor",[0 0.8 0.8])

//-----------------------//
xarrows([0;1*Bx],[0;1*By],[0;1*Bz],30,5)
xarrows([0;1*Ex],[0;2*Ey],[0;Ez],30,2)
//xarrows([0;10],[0;0],[0;0],20,1)
a=get("current_axes")
a.data_bounds=[min(X)-1,min(Y)-1,min(Z)-1;max(x)+1,max(Y)+1,max(Z)+1]
//-----------------//
