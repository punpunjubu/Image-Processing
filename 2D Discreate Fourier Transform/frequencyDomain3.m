im1 = imread('trees.jpg');
fftA = fft2(im1);
mag1 = abs(fftA);

im2 = imread('smoke.jpg');
fftA3 = fft2(im2);
mag2 = abs(fftA3);

F4 = (abs((fftA + fftA3)/2) .* exp(1i*angle(fftA + fftA3)));
x5 = ifft2(F4);
x6 = uint8(x5) ;
figure(2); imshow(x6);

