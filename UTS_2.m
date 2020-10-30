clear
clc

%const
A = [ 1 2 4;6 4 8;8 6 2];
B = [6 8 6;2 10 7;4 2 5];

% (a)

a = A+B;

% (b)

for i = 1:3
    for k =1:3; 
    b(i,k) = 0;
    end
end
for i = 1:3
  for j = 1:3
    for k = 1:3
        b(i,j)=b(i,j)+ A(i,k)*B(k,j);
    end
  end
end

% (c)
for i = 
%c = cross(A,B);