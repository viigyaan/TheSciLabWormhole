clear;clc;clf()
x = [-6*%pi:0.5:6*%pi]
y = [-6*%pi:0.5:6*%pi]
[X,Y]=meshgrid(x,y)
Z = sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2)
surf(X,Y,Z,'facecol','cyan','edgecol','blue')
