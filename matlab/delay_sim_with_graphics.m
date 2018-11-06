close all
clear all
    
hold off
th = 0:pi/50:2*pi;
% Radius of board
r = 65;
% x position of board
x = 0;
% y position of board
y = 0;

zunit = r * cos(th) + x;
xunit = r * sin(th) + y;
yunit = zeros(length(xunit),1); 

trpos = 55;
% transducer radius
tr = 5;
% position of transducers
tx = zeros(7,4);
tx(1,:) = [53 51.671178125 47.75135 41.43706875];
tx(2,:) = [33.044959375 22.9958375 11.793609375 0];
tx(3,:) = [-11.793609375 -22.995840625 -33.044959375 -41.43706875];
tx(4,:) = [-47.75135 -51.67118125 -53 -51.671178125];
tx(5,:) = [-47.75135 -41.437065625 -33.04495625 -22.995834375];
tx(6,:) = [-11.79360625 0.000003125 11.7936125 22.995840625];
tx(7,:) = [33.0449625 41.437071875 47.75135 51.67118125];

tz = zeros(7,4);
tz(1,:) = [0 11.793609375 22.99583375 33.044959375];
tz(2,:) = [41.43706875 47.75135 51.671178125 53];
tz(3,:) = [51.671178125 47.75135 41.43706875 33.044959375];
tz(4,:) = [22.9958375 11.793609375 -0.000003125 -11.7936125];
tz(5,:) = [-22.995840625 -33.0449625 -41.43706875 -47.75135];
tz(6,:) = [-51.67118125 -53 -51.671178125 -47.75135];
tz(7,:) = [-41.437065625 -33.04495625 -22.995834375 -11.79360625];

ty = zeros(7,4);

listenDistance = zeros(10,7,4);
listenDelay = zeros(10,7,4);
%%

Fs = 100000000;
% Sampling period
Ts = 1/Fs;


downsample_value = 256;
Fsd = Fs/downsample_value;

Tsd = 1/Fsd;
HdPiezo = designfilt('bandpassiir', ...       % Response type
   'StopbandFrequency1',1000, ...    % Frequency constraints
   'PassbandFrequency1',39000, ...
   'PassbandFrequency2',41000, ...
   'StopbandFrequency2',160000, ...
   'StopbandAttenuation1',40, ...   % Magnitude constraints
   'PassbandRipple',0.05, ...
   'StopbandAttenuation2',40, ...
   'DesignMethod','ellip', ...      % Design method
   'MatchExactly','passband', ...   % Design method options
   'SampleRate',Fs)               % Sample rate
disp("Piezo Emulation filter design finished");
%%
figure('units','normalized','outerposition',[0 0 1 1])
message_frequency = 50;
raw_vhdl_sim = csvread("/home/dg/Desktop/Engineering_4B/matlab/csv/dsb_50_sim.csv");
t = 0:Ts:(length(raw_vhdl_sim(:,1))*Ts)-Ts;

input = reinterpretcast(int16(raw_vhdl_sim(:,1)),numerictype(1,16,15));
cos_sig = reinterpretcast(int16(raw_vhdl_sim(:,2)),numerictype(1,16,15));
dsb = reinterpretcast(int8(raw_vhdl_sim(:,3)),numerictype(1,8,7));

disp("DSB CSV file loaded");
subplot(2,1,1);
plot(t,input,'r',t,cos_sig,'b', t,dsb,'k')
axis([0 4/message_frequency -1.2 1.2]);
xlabel("Time (S)");
ylabel("Magnitude");
title("Simulated VHDL Generated Signals");
legend("50Hz Message", "40KHz  Carrier", "40Khz DSB");


[pxx_input fxx_input] = pwelch(input.double, [], [], [], Fs);
[pxx_cos fxx_cos] = pwelch(cos_sig.double, [], [], [], Fs);
[pxx_dsb fxx_dsb] = pwelch(dsb.double, [], [], [], Fs);
subplot(2,1,2);
semilogx(fxx_input, pow2db(pxx_input),'r',fxx_cos, pow2db(pxx_cos),'b', fxx_dsb, pow2db(pxx_dsb),'k');
axis([0 50000 -120 0]);
title("Simulated VHDL Generated Signals");
legend("50Hz Message", "40KHz  Carrier", "40Khz DSB");
legend('Location','northwest')
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");
title("Simulated VHDL Generated Signals");
legend("50Hz Message", "40KHz  Carrier", "40Khz DSB");
legend('Location','northwest')

clear cos_sig;
clear input;
clear raw_vhdl_sim;
clear pxx_input;
clear fxx_input;
clear fxx_cos;
clear pxx_cos;


% load simulation results
raw_vhdl_sim = csvread("/home/dg/Desktop/Engineering_4B/matlab/csv/pwm_50_sim.csv");
disp("PWM CSV file loaded");

%n = csvread("/home/dg/Desktop/Engineering_4B/vhdl/nco/dsb_sim.csv");
%disp("DSB CSV file loaded");



signals = zeros(4,28, length(raw_vhdl_sim(:,1)));
sum = zeros(6, length(raw_vhdl_sim(:,1)));
sum_pla = zeros(6, length(dsb));
demod = zeros(6, length(downsample(sum(1,:),downsample_value)));
demod_pla = zeros(6, length(downsample(sum_pla(1,:),downsample_value)));

listenDegrees = zeros(6,1);
listenDelayCsv = zeros(6,28);


for i = 1:6
   figure('units','normalized','outerposition',[0 0 1 1])
    plot3(xunit, yunit, zunit,'k');
   hold on 
   plot3([0, 0], [0 1000], [0, 0],'y--');

    % Position of listening position
    %listenOriginDistance = sqrt( ((listenx)^2 + ((listeny)^2) + (listenz)^2));
    listenDegrees(i) = 90+(5*(i-1));
    listeny = 300;
    listenOriginDistance = listeny/(sin(degtorad(listenDegrees(i))));
    listenx = sqrt((listenOriginDistance^2) - (listeny^2));
    listenz = 0.0;

    tranducer_counter = 0;
    for j = 1:7
        for k = 1:4
            tranducer_counter = tranducer_counter+1;
            plotx = tr*cos(th) + tx(j,k);
            ploty = zeros(length(plotx),1);
            plotz = tr*sin(th) + tz(j,k);

           plot3(plotx,ploty,plotz, 'r');
           hold on

            listenDistance(i,j,k) = sqrt( ((listenx - tx(j,k))^2) + ((listeny - ty(j,k))^2) + (listenz - tz(j,k))^2);
            listenDelay(i,j,k) = double(listenDistance(i,j,k))/double(343.0);
           plot3([tx(j,k) listenx], [ty(j,k) listeny], [tz(j,k) listenz],'b--');
            listenDelayCsv(i,tranducer_counter) = listenDelay(i,j,k);
            t = text(max(max(tx))+100,50,95-(tranducer_counter*5),"Transducer" + num2str(tranducer_counter) + " delay: " + num2str(listenDelay(i,j,k)));
           t.FontSize = 5;
        end
       % csvwrite("/home/dg/Desktop/matlab/listenDelay.csv", listenDelay(i,:), tranducer_counter, 1);
    end
 %   csvwrite("/home/dg/Desktop/Engineering_4B/matlab/csv/listenDelay_" + num2str(listenDegrees(i)-90) + "_degrees",listenDelayCsv(i,:));


    % draw listening position
    plotx = tr*cos(th) + listenx;
    ploty = listeny*ones(length(plotx),1);
    plotz = tr*sin(th) + listenz;
    plot3(plotx,ploty,plotz, 'g');


    grid on
  axis([-100 400 0 300 -70 70]) 
   ylabel("y distance (mm)");
   xlabel("x distance (mm)");
   zlabel("z distance (mm)");
    title(num2str(listenDegrees(i)-90) + " Degree PDTAL Listening Distance"); 
hold off

%    signals(i,1,:) = pdtal_sim(m(:,1), HdPiezo, listenDistance(i,1,1),Fs);
    for m = 1:7
        for n = 1:4
            x = pdtal_sim(raw_vhdl_sim(:,m), HdPiezo, listenDistance(i,m,n),Fs);
            sum(i,:) = sum(i,:)+x;
            y = pdtal_sim(dsb.double, HdPiezo, listenDistance(i,m,n),Fs);
            sum_pla(i,:) = sum_pla(i,:)+y;
        end
    end
    d = diff(downsample(sum(i,:),512),2).^2;
    demod(i,1:length(d)) = d;
    e = diff(downsample(sum_pla(i,:),512),2).^2;
    demod_pla(i,1:length(e)) = e;
end

clear dsb;
clear raw_vhdl_sim

% This section plots the time and frequency domain plots of the demodulated
% signal
% Time vector
td = 0:Tsd:(length(demod(1,:))*Tsd)-Tsd;
t = 0:Ts:(length(sum(1,:))*Ts)-Ts;
figure()
subplot(2,1,1)
s = size(demod);
for i = 1:s(1)
    plot(td, demod(i,:));
    hold on
end
xlabel("Time (S)");
ylabel("Magnitude");
title("Demodulated PDTAL Listening Angle (50Hz Message)");
legend("0 degrees", "5 degrees", "10 degrees", "15 degrees", "20 degrees", "25 degrees");

subplot(2,1,2)
s = size(demod);
for i = 1:s(1)
    [pxx fxx] = pwelch(demod(i,:), [], [], [], Fs/512);
    semilogx(fxx, pow2db(pxx));
    hold on
end
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");
title("Demodulated PDTAL Listening Angle (50Hz Message)");
legend('Location','northwest')
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
legend("0 degrees", "5 degrees", "10 degrees", "15 degrees", "20 degrees", "25 degrees");


% This section plots the time and frequency domain plots of the demodulated
% signal
figure('units','normalized','outerposition',[0 0 1 1])
subplot(2,1,1)
s = size(sum);
for i = 1:s(1)
    plot(t, sum(i,:));
    hold on
end
xlabel("Time (S)");
ylabel("Magnitude");
title("PDTAL Listening Angle (50Hz Message)");
legend("0 degrees", "5 degrees", "10 degrees", "15 degrees", "20 degrees", "25 degrees");

subplot(2,1,2)
s = size(demod);
for i = 1:s(1)
    [pxx fxx] = pwelch(sum(i,:), [], [], [], Fs);
    semilogx(fxx, pow2db(pxx));
    hold on
end
xlabel("Frequency (Hz)");
ylabel("Magnitude (dB)");
title("PDTAL Listening Angle (50Hz Message)");
legend("0 degrees", "5 degrees", "10 degrees", "15 degrees", "20 degrees", "25 degrees");
legend('Location','northwest')
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
axis([0 100000 -150 0])

% calculates demodulated message amplitude.
maxValue = zeros(6,1);
maxValue_pla = zeros(6,1);

for i = 1:s(1)
    [pxx fxx] = pwelch(sum(i,:), [], [], [], Fs);
    [x, y] = max(pxx);
    maxValue(i) = pow2db(x);
    
    [pxx fxx] = pwelch(sum_pla(i,:), [], [], [], Fs);
    [x, y] = max(pxx);
    maxValue_pla(i) = pow2db(x);
end
%%
figure('units','normalized','outerposition',[0 0 1 1])
subplot(2,1,1)
plot(listenDegrees-90, maxValue-maxValue(1),'r', listenDegrees-90, maxValue_pla-maxValue_pla(1),'b');
xlabel("Degrees from on-axis point");
ylabel("50Hz Magnitude (dB)");
legend("PDTAL", "PLA");
title("Relative dB PDTAL/PLA Listening Angle (50Hz Message)");
% SNR
%Filter for removing ultrasonic signals
subplot(2,1,2)
highpassFilt = designfilt( ...
    'lowpassfir',... 
    'PassbandFrequency', 15000,...
    'StopbandFrequency', 25000,...
    'PassbandRipple', 0.01,...
    'StopbandAttenuation', 100,...
    'SampleRate', Fsd);
snra = zeros(6,1);
snra_pla = zeros(6,1);

for i = 1:6
    snra(i) = snr(filter(highpassFilt,demod(i,:)),Fs/512, 100);
    snra_pla(i) = snr(filter(highpassFilt,demod_pla(i,:)),Fs/512, 100);
end
plot(listenDegrees-90,  snra-snra(1),'r',listenDegrees-90,  snra_pla-snra_pla(1),'b');
xlabel("Degrees from on-axis point");
ylabel("SNR (dB)");
legend("PDTAL", "PLA");
title("Relative SNR PDTAL Listening Angle (50Hz Message)");

% THD
figure('units','normalized','outerposition',[0 0 1 1])
subplot(2,1,1)
%Filter for removing ultrasonic signals
highpassFilt = designfilt( ...
    'lowpassfir',... 
    'PassbandFrequency', 15000,...
    'StopbandFrequency', 25000,...
    'PassbandRipple', 0.01,...
    'StopbandAttenuation', 100,...
    'SampleRate', Fs/512);
%Filter for removing DC

thda = zeros(6,1);
thda_pla = zeros(6,1);
Fs2 = Fs/512;
for i = 1:6
    %temp = filter(highpassFilt,demod(i,:));
    %temp2 = filter(highpassFilt,demod_pla(i,:));
    temp = demod(i,:);
    temp2 = demod_pla(i,:);
    thda(i) = THD(temp,Fs2, Fs2/length(temp), message_frequency,19,'normal');
    thda_pla(i) = THD(temp2,Fs2, Fs2/length(temp2), message_frequency,19,'normal');
end
plot(listenDegrees-90,  thda- thda(1),'r',listenDegrees-90,  thda_pla- thda_pla(1),'b');
strValues = strtrim(num2str(thda(:)-thda(1),4));
text(listenDegrees-90,thda- thda(1),strValues,'VerticalAlignment','bottom');
strValues = strtrim(num2str(thda_pla(:)-thda_pla(1),4));
text(listenDegrees-90,thda_pla- thda_pla(1),strValues,'VerticalAlignment','bottom');
xlabel("Degrees from on-axis point");
ylabel("THD (%)");
legend("PDTAL", "PLA");


title("Relative THD PDTAL Listening Angle (50Hz Message)");

subplot(2,1,2)
plot(listenDegrees-90,  thda,'r',listenDegrees-90,  thda_pla,'b');
strValues = strtrim(num2str(thda(:),4));
text(listenDegrees-90,thda,strValues,'VerticalAlignment','bottom');
strValues = strtrim(num2str(thda_pla(:),4));
text(listenDegrees-90,thda_pla,strValues,'VerticalAlignment','bottom');
xlabel("Degrees from on-axis point");
ylabel("THD (%)");
legend("PDTAL", "PLA");

title("THD PDTAL Listening Angle (50Hz Message)");




disp("All signals processed");



function r = pdtal_sim(signal, filter_x, delay_distance, Fs)
    delay = (delay_distance/1000)/343;
    delay_samples = round(delay/(1/Fs));
   % disp("Delay: " + num2str(delay));
   % disp("Signal Length: " + num2str(length(signal)));
      % creates array of the correct size to store both the
    % leading zeros for the delay, and the actual signal
        x = zeros(1, round(delay_samples+length(signal)));
    % Filters the signal with the piezo emulation filter and addes to the
    % signal
     x((delay_samples+1):end) = filter(filter_x, signal);
     
     % adjusts the amplitude of the signal based on the distance
    % the signal has to travel. This is referenced to 1000mm.
     x = x * db2pow((20*log10(1000/delay_distance)));
    r = x(1:length(signal));
end
