Fs=10000;
Fd=1000;
b=[1 1 0 1 0 0 1 0 1 1];
bnrz=kutuplu(b,Fd,Fs,'nrz');
plot(bnrz,'r');
title('Kutuplu NRZ');
pause;
brz=kutuplu(b,Fd,Fs,'rz');
plot(brz,'r');
title('Kutuplu RZ');