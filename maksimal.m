
function [x,h] = maksimal(Vo,g,a);

  a = 30:5:60;%elevation
  x = ((Vo^2)*(2*(sind(a))))/(g);%Maximum Height(m)
  h = ((Vo^2)*((sind(a)).^2))/(2*g);%maximum distance(m)

end