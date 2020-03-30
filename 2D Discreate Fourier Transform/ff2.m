close all
clear all
clc
load('jupiterbwnoisy.mat'); %rawimage
fftR = fft2(imNoisy);
[r, c, e] = size(fftR);
figure(1); imshow(imNoisy,[]);
%figure(2); imshow(log(abs(fftshift(fftR))),[]);
vertical=zeros(1545);
horizontal=zeros(1545);
N = c;
A = 1;
u = 40;
v = 0;
for y=1:N
 for x=1:N
 vertical(y,x) = 128 * (A*cos((2*pi*(40*x + 0*y))/N)+ A*sin((2*pi*(40*x + 0*y))/N)+1);
 horizontal(y,x) = 128 * (A*cos((2*pi*(0*x + 40*y))/N)+ A*sin((2*pi*(0*x + 40*y))/N)+1);
 end
end

pattern = vertical + horizontal;
fftA = fft2(double(pattern(1:r,1:c)));

fftA3 = fftR - (fftA);
% F3 = (abs(fftA3)).*exp(1i*angle(fftA3));
F4 = ifft2(fftA3);
figure(5); imshow(F4, []);
