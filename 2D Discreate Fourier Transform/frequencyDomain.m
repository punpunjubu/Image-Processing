fftA = fft2(imread('lion-cub.jpg'));
F = (abs(fftA)).*exp(1i*angle(fftA));
x = ifft2(F); samepic
figure(222); imshow(uint8(x));
fftA2 = fft2(x);

phase = exp(1i*angle(fftA2));

fftA3 = fft2(imread('curve_brighter.jpg'));
F3 = (abs(fftA3)).*exp(1i*angle(fftA3));
x3 = ifft2(F3);
fftA4 = fft2(x3);
mag = abs(fftA3);

F4 = mag.* phase;
x5 = ifft2(F4);
figure(1); imshow(uint8(x5));


