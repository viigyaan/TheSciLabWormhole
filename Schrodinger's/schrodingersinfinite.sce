clc;clear;clf();

//SOLVING SCHRODINGER'S EQUATION NUMERICALLY
//INFINITE WELL POTENNTIAL

m = 0.511D6; h = 1973;    //mass of elctron in Mev //hc instead of h
a=10;n=100;d=a/n
x = [-a/2:d:a/2]
function y=V(x)
    y=0
endfunction

for i = 1:n-1
    xi=x(i+1)
    A(i,i) = 2*(1 + (m*d*d/(h*h))*V(xi))
    if i<n-1 then
    A(i+1,i)=-1
    A(i,i+1)=-1
    end
end

[X,lambda]=spec(A)
psi0=[0;X(:,1);0]
psi1=[0;X(:,2);0]
psi2=[0;X(:,3);0]
psi3=[0;X(:,4);0]
z = max(psi0.^2)+0.01
plot(x,psi0.^2,'-o',x,psi1.^2+z,'-*',x,psi2.^2+2*z,'-+',x,psi3.^2+3*z,'-b')
plot(x,V(x)/150,'-k')
legend(['Ground state','First excietd state','Second excited state','Third excited state'],3)
xtitle("Wave function solution of elctron","x","psi square")
