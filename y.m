%soal pertama

clear
clc

%constanta
m1 = ' real';
m2 = 'real';
z = 'real';
v = 'real';

%data tabel
X = [ 60 80 100 120 140 160 180 200];%offset
t = [0.5147 0.5151 0.5155 0.5161 0.5167 0.5175 0.5183 0.5192];%travel time

%matriks Gm=d
G = [1,3600;1,6400;1,10000;1,14400;1,19600;1,25600;1,32400;1,40000];
m = [m1,m2];
d = [0.26491609;0.26532801;0.26574025;0.26635921;0.26697889;0.26780625;0.26863489;0.26956864];

%matriks tranpose
Gt = G';

% mencari m dari GtGm = Gtd
format long
m = inv(Gt*G)*(Gt*d);
m1 = m (1,1);
m2 = m (2,1);

%plot data observasi
plot(X,t);
grid;
xlabel('offset value(m)');
ylabel('Travel Time (s)');
title('\fontsize{14} grafik data ');
legend(' x= Offset Value (m)',' y= Travel Time (s)');

%jawaban
v = (1/m2)^0.5; % nilai kecepatan gelombang seismik
z = ((m1*(v^2))/4)^0.5; % nilai reflektor mendatar terhadap permukaan
