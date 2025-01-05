Fs = 1000;            % Sampling frequency
T = 1/Fs;             % Sampling period
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector
S = 0.8 + 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);
X = S + 2*randn(size(t));
figure(1)
plot(1000*t,X)
title("Signal Corrupted with Zero-Mean Random Noise")
xlabel("t (milliseconds)")
ylabel("X(t)")
Y = fft(X);
figure(2)
plot(Fs/L*(0:L-1),abs(Y),"LineWidth",3)
title("Complex Magnitude of fft Spectrum")
xlabel("f (Hz)")
ylabel("|fft(X)|")
figure(3)
plot(Fs/L*(-L/2:L/2-1),abs(fftshift(Y)),"LineWidth",3)
title("fft Spectrum in the Positive and Negative Frequencies")
xlabel("f (Hz)")
ylabel("|fft(X)|")
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
figure(4)
f = Fs/L*(0:(L/2));
plot(f,P1,"LineWidth",3)
title("Single-Sided Amplitude Spectrum of X(t)")
xlabel("f (Hz)")
ylabel("|P1(f)|")
Y = fft(S);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
figure(5)
plot(f,P1,"LineWidth",3)
title("Single-Sided Amplitude Spectrum of S(t)")
xlabel("f (Hz)")
ylabel("|P1(f)|")
Fs = 44100;         % Sampling frequency
T = 1/Fs;           % Sampling period
t = -0.5:T:0.5;     % Time vector
L = length(t);      % Signal length

X = 1/(0.4*sqrt(2*pi))*(exp(-t.^2/(2*(0.1*1e-3)^2)));
figure(6)
plot(t,X)
title("Gaussian Pulse in Time Domain")
xlabel("Time (t)")
ylabel("X(t)")
axis([-1e-3 1e-3 0 1.1])
n = 2^nextpow2(L);
Y = fft(X,n);
f = Fs*(0:(n/2))/n;
P = abs(Y/sqrt(n)).^2;
figure(7)
plot(f,P(1:n/2+1))
title("Gaussian Pulse in Frequency Domain")
xlabel("f (Hz)")
ylabel("|P(f)|")
Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sampling period
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector
x1 = cos(2*pi*50*t);          % First row wave
x2 = cos(2*pi*150*t);         % Second row wave
x3 = cos(2*pi*300*t);         % Third row wave

X = [x1; x2; x3];
figure(8)
for i = 1:3
    subplot(3,1,i)
    plot(t(1:100),X(i,1:100))
    title("Row " + num2str(i) + " in the Time Domain")
end
dim = 2;
Y = fft(X,L,dim);
P2 = abs(Y/L);
P1 = P2(:,1:L/2+1);
P1(:,2:end-1) = 2*P1(:,2:end-1);
figure(9)
for i=1:3
    subplot(3,1,i)
    plot(0:(Fs/L):(Fs/2-Fs/L),P1(i,1:L/2))
    title("Row " + num2str(i) + " in the Frequency Domain")
end
Fs = 100;
t = 0:1/Fs:1-1/Fs;
x = cos(2*pi*15*t - pi/4) + cos(2*pi*40*t + pi/2);
y = fft(x);
z = fftshift(y);

ly = length(y);
f = (-ly/2:ly/2-1)/ly*Fs;
figure(10)
stem(f,abs(z))
title("Double-Sided Amplitude Spectrum of x(t)")
xlabel("Frequency (Hz)")
ylabel("|y|")
grid
tol = 1e-6;
z(abs(z) < tol) = 0;

theta = angle(z);
figure(11)
stem(f,theta/pi)
title("Phase Spectrum of x(t)")
xlabel("Frequency (Hz)")
ylabel("Phase/\pi")
grid
Fs = 80;
T = 1/Fs;
L = 65;
t = (0:L-1)*T;
X = 3*cos(2*pi*2*t) + 2*cos(2*pi*4*t) + sin(2*pi*6*t);
figure(12)
plot(t,X)
title("Signal superposition in time domain")
xlabel("t (ms)")
ylabel("X(t)")
Y = fft(X);
f = Fs*(0:(L-1)/2)/L;
P2 = abs(Y/L);
P1 = P2(1:(L+1)/2);
P1(2:end) = 2*P1(2:end);
figure(13)
plot(f,P1,"-o")
title("Single-Sided Spectrum of Original Signal")
xlabel("f (Hz)")
ylabel("|P1(f)|")
n = 2^nextpow2(L);
Y = fft(X,n);
f = Fs*(0:(n/2))/n;
P2 = abs(Y/L);
P1 = P2(1:n/2+1);
P1(2:end-1) = 2*P1(2:end-1);
figure(14)
plot(f,P1,"-o")
title("Single-Sided Spectrum of Padded Signal")
xlabel("f (Hz)")
ylabel("|P1(f)|")
