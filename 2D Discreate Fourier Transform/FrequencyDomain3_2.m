fftA = fft2(imread('trees.jpg'));


fftA3 = fft2(imread('smoke.jpg'));
F3 = (abs((fftA3/2)+(fftA/2))).*exp(1i*angle(fftA+fftA3));
F4 = ifft2(F3);
imshow(uint8(F4))