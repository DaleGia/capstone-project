close all
clear all
Fs = 100000000;
downsample_value = 1;
Fsd = Fs/downsample_value;
HdPiezo = designfilt('bandpassiir', ...       % Response type
   'StopbandFrequency1',1000, ...    % Frequency constraints
   'PassbandFrequency1',39000, ...
   'PassbandFrequency2',41000, ...
   'StopbandFrequency2',80000, ...
   'StopbandAttenuation1',40, ...   % Magnitude constraints
   'PassbandRipple',0.05, ...
   'StopbandAttenuation2',40, ...
   'DesignMethod','ellip', ...      % Design method
   'MatchExactly','passband', ...   % Design method options
   'SampleRate',Fs)               % Sample rate
disp("Piezo Emulation filter design finished");
% load simulation results
m = csvread("/home/dg/Desktop/Engineering_4B/vhdl/nco/pwm_sim.csv");
disp("PWM CSV file loaded");

n = csvread("/home/dg/Desktop/Engineering_4B/vhdl/nco/dsb_sim.csv");
disp("DSB CSV file loaded");

Fsn = 195312.5;
Tsn = 1/Fsn;
tn = 0:Tsn:(length(n(:,3))*Tsn)-Tsn;


one = filter(HdPiezo, downsample(m(:,1),downsample_value));
two = filter(HdPiezo, downsample(m(:,2),downsample_value));
three = filter(HdPiezo, downsample(m(:,3),downsample_value));
four = filter(HdPiezo, downsample(m(:,4),downsample_value));
five = filter(HdPiezo, downsample(m(:,5),downsample_value));
six = filter(HdPiezo, downsample(m(:,6),downsample_value));
seven = filter(HdPiezo, downsample(m(:,7),downsample_value));

sum = seven + six + five + four + three + two + one;
input = reinterpretcast(int16(n(:,1)),numerictype(1,16,15));
cos = reinterpretcast(int16(n(:,2)),numerictype(1,16,15));
dsb = reinterpretcast(int8(n(:,3)),numerictype(1,8,7));
sum_raw = m(:,1) + m(:,2) +  m(:,3) + m(:,4) + m(:,5) + m(:,6) + m(:,7);

disp("All signals processed");

%demod_sum = diff(diff(sum)).^2;


% Sampling period
Ts = 1/Fsd;
% Time vector
t = 0:Ts:(length(sum)*Ts)-Ts;
tn = 0:Ts:(length(n(:,1))*Ts)-Ts;


%%
figure(1);
subplot(2,1,1);
[pxx,fx] = pwelch(sum,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x, y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
hold on
[pxx,fx] = pwelch(one,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(two,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(three,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(four,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(five,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(six,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
[pxx,fx] = pwelch(seven,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[x y] = max(pxx);
text(50000,pow2db(x),num2str(pow2db(x))+"dB");
hold off;
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB)")
title("PDTAL DSB PWM Outputs in Air")
legend("Sum of on axis outputs", "PWM Bit 1", "PWM Bit 2", "PWM Bit 3", "PWM Bit 4", "PWM Bit 5", "PWM Bit 6", "PWM Bit 7");   
axis([0 80000 -100 0]);

subplot(2,1,2);
plot(t, sum);
hold on 
plot(t, one);
plot(t, two);
plot(t, three);
plot(t, four);
plot(t, five);
plot(t, six);
plot(t, seven);
ylabel("Magnitude")
xlabel("Time (S)")
legend("Sum of on axis outputs", "PWM Bit 1", "PWM Bit 2", "PWM Bit 3", "PWM Bit 4", "PWM Bit 5", "PWM Bit 6", "PWM Bit 7");   
axis([0 0.008 -2 2]);


figure(2)
subplot(2,1,1);
[pxx,fx] = pwelch(input.double,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold on
[pxx,fx] = pwelch(cos.double,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
[pxx,fx] = pwelch(dsb.double,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold off
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB)")
title("PDTAL Input Signals");
legend("1KHz Input Signal, 40KHz Carrier, DSB Signal");
axis([0 80000 -100 0]);

subplot(2,1,2);
plot(tn, input.double);
hold on
plot(tn, cos.double);
plot(tn, dsb.double);

ylabel("Magnitude")
xlabel("Time (S)")
legend("1KHz Input Signal", "40KHz Carrier", "DSB Signal");
axis([0 0.003 -1.2 1.2]);


figure(3)
subplot(2,1,1)
[pxx,fx] = pwelch(dsb.double,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold on
[pxx,fx] = pwelch(sum,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold off;
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB)")
title("PDTAL DSB/Summation in Air Comparison")
legend("DSB Signal", "Sum of on axis outputs");
axis([30000 50000 -100 0]);

subplot(2,1,2)
plot(tn, dsb.double);
hold on
plot(t, sum);
ylabel("Magnitude")
xlabel("Time (S)")
legend("DSB Signal", "Sum of on axis outputs");
axis([0 0.003 -2.2 2.2]);


figure(4)
subplot(2,1,1)
[pxx,fx] = pwelch(sum_raw,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold on
[pxx,fx] = pwelch(sum,[],[],[],Fs,'power');
plot(fx, pow2db(pxx));
hold off;
xlabel("Frequency (Hz)")
ylabel("Magnitude (dB)")
title("PDTAL in Air Comparison ")
legend("Sum of on axis outputs without piezo filter", "Sum of on axis outputs with piezo filter");
axis([0 80000 -100 0]);

subplot(2,1,2)
plot(t, sum_raw);
hold on
plot(t, sum);
ylabel("Magnitude")
xlabel("Time (S)")
legend("Sum of on axis outputs without piezo filter", "Sum of on axis outputs with piezo filter");
axis([0 0.003 -2.2 2.2]);