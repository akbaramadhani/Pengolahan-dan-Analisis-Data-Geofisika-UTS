%soal kedua

clear
clc

%const
m1 = ' real';
m2 = 'real';
m3 = 'real';
z = 'real';
v = 'real';
a = 'real';

%data tabel
X = [ 60 80 100 120 140];%offset
t = [0.4877 0.4900 0.4924 0.4949 0.4974];%traveltime

%matriks
G = [1,60,3600;1,80,6400;1,100,10000;1,120,14400;1,140,19600];
d = [0.23785129;0.2401;0.24245776;0.24492601;0.24750625];
m = [m1,m2,m3];

%matriks transpose
Gt = G';

% mencari m dari GtGm = Gtd
format Long
m = inv(Gt*G)*(Gt*d);
m1 = m (1,1);
m2 = m (2,1);
m3 = m (3,1);

%plot data observasi
plot(X,t);
grid;
xlabel('offset value(m)');
ylabel('Travel Time (s)');
title('\fontsize{14} Graphic Data ');
legend(' x= Offset Value (m)',' y= Travel Time (s)');

%jawaban
v =sqrt(1/m3); % nilai kecepatan gelombang seismik
z = sqrt((m1*(v^2))/4); % nilai reflektor mendatar terhadap permukaan
a = asind((m2*(v^2))/(4*z));%sudut kemiringan reflektor ( dalam derajat )

