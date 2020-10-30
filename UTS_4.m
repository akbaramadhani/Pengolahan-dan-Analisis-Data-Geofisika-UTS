clc
clear
close
A = 1; % amplitudo
t = 0:0.001:1; % t_awal = 0; t_akhir = 1; interval = 0.001
%1
f1 = 10; % frekuensi
theta1 = 0;   % sudut fase gelombang
y1 = A * sin(2*pi*f1*t + theta1); % persamaan gelombang
figure (1)
plot(t,y1) % menggambar grafik persamaan gelombang

%2
f2 = 20; % frekuensi
theta2 = pi/2;   % sudut fase gelombang
y2 = A * sin(2*pi*f2*t + theta2); % persamaan gelombang
figure (2)
plot(t,y2) % menggambar grafik persamaan gelombang

%3
f3 = 25; % frekuensi
theta3 = pi/4;   % sudut fase gelombang
y3 = A * sin(2*pi*f3*t + theta3); % persamaan gelombang
figure (3)
plot(t,y3) % menggambar grafik persamaan gelombang

%4
f4 = 30; % frekuensi
theta4 = pi/8;   % sudut fase gelombang
y4 = A * sin(2*pi*f4*t + theta3); % persamaan gelombang
figure (4)
plot(t,y4) % menggambar grafik persamaan gelombang
