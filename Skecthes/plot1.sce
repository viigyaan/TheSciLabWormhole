//PLOTTING IN SCILAB

x=[0:0.1:10]  //creates an array with step size 0,1
//x = linspace(0,10,100) creates an array with size 100
y=x.^2 //dot makes scilab do element wise operation
plot(x,y,'o')
