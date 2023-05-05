clc;clear;clf();

//SOLVING SCHRODINGER'S EQUATION NUMERICALLY
//HARMONIC OSCILLATOR POTENNTIAL

//TISE : -h2/2m d2y/dx2 + Vy = Ey
// => -h2/2m y" + Vy = Ey

//By method of finite differences:
// f" = (f(x+d) - 2f(x) + f(x-d))/d2
//y"(xi) = [y(xi+1)-2y(xi)+y(xi-1)]/d2

//We take a finite well with symmetric boundaries and take n intermediate points
// The problem is boundary value problem 
//and we take y or psi to be zero at boundaries.
// We check value of y at each point

// for i = 1
// -h2/2m y"(x1) + Vy = Ey
//-h2/2md2[y(x2) - 2y(x1) + y(x0)] + V(x1)y(x1) = Ey(x1)
// [2+2md2/h2 V(x1)]y(x1) - y(x2) = 2md2/h2 Ey(x1) since y(x0) = 0

//for i = 2
//-h2/2md2[y(x3)-2y(x2)+y(x1)] + V(x2)y(x2) = Ey(x2)
// -y(x1) + [2+2md2/h2 V(x2)]y(x2) - y(x3) = 2md2/h2 Ey(x2)

//for i = 3 
//-y(x2) + [2 + 2md2/h2 V(x3)]y(x3) - y(x4) = 2md2/h2 Ey(x3)
//and so on....


//for i = n-1
//-y(xn-2) + [2 + 2md2/h2 V(xn-1)]y(xn-1) - y(xn) = 2md2/h2 Ey(xn-1) 
//where y(xn) = 0

//Put the value of the linear equations in Matrix and solve
//Use eigen value solution


m = 0.511D6; h = 1973;    //mass of elctron in Mev //hc instead of h
a=10;n=100;d=a/n
x = [-a/2:d:a/2]
function y=V(x)
    y=x^2
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
