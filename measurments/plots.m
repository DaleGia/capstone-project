close all
clear all
Fs =192000;
fft_point = 131072;
Ts = 1/Fs;
%t = 0:Ts:(length(raw_fft(:,2))*Ts)-Ts;
Fd = Fs/fft_point;

noise_floor = csvread("/home/dg/Desktop/Engineering_4B/measurments/noise_floor.csv");
ox50 = csvread("/home/dg/Desktop/Engineering_4B/measurments/50Hz-ox-30cm.csv");
ox100 = csvread("/home/dg/Desktop/Engineering_4B/measurments/100Hz-ox-30cm.csv");
ox200 = csvread("/home/dg/Desktop/Engineering_4B/measurments/200Hz-ox-30cm.csv");
ox400 = csvread("/home/dg/Desktop/Engineering_4B/measurments/400Hz-ox-30cm.csv");
ox800 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-ox-30cm.csv");
ox1600 = csvread("/home/dg/Desktop/Engineering_4B/measurments/1600Hz-ox-30cm.csv");
ox3200 = csvread("/home/dg/Desktop/Engineering_4B/measurments/3200Hz-ox-30cm.csv");
ox6400 = csvread("/home/dg/Desktop/Engineering_4B/measurments/6400Hz-ox-30cm.csv");
ox800s1 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s1-ox-30cm.csv");
ox800s2 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s2-ox-30cm.csv");
ox800s3 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s3-ox-30cm.csv");
ox800s4 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s4-ox-30cm.csv");
ox800s5 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s5-ox-30cm.csv");
ox800s6 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s6-ox-30cm.csv");
ox800s7 = csvread("/home/dg/Desktop/Engineering_4B/measurments/800Hz-s7-ox-30cm.csv");


noise_floor_fft = complex(noise_floor(:,2), noise_floor(:,3));
ox50_fft = complex(ox50(:,2), ox50(:,3));
ox100_fft = complex(ox100(:,2), ox100(:,3));
ox200_fft = complex(ox200(:,2), ox200(:,3));
ox400_fft = complex(ox400(:,2), ox400(:,3));
ox800_fft = complex(ox800(:,2), ox800(:,3));
ox1600_fft = complex(ox1600(:,2), ox1600(:,3));
ox3200_fft = complex(ox3200(:,2), ox3200(:,3));
ox6400_fft = complex(ox6400(:,2), ox6400(:,3));
ox800s1_fft = complex(ox800s1(:,2), ox800s1(:,3));
ox800s2_fft = complex(ox800s2(:,2), ox800s2(:,3));
ox800s3_fft = complex(ox800s3(:,2), ox800s3(:,3));
ox800s4_fft = complex(ox800s4(:,2), ox800s4(:,3));
ox800s5_fft = complex(ox800s5(:,2), ox800s5(:,3));
ox800s6_fft = complex(ox800s6(:,2), ox800s6(:,3));
ox800s7_fft = complex(ox800s7(:,2), ox800s7(:,3));

thd_array = zeros(1,8);
thd_frequency_array = [50 100 200 400 800 1600 3200 6400];
thd_array(1) = THD(db2mag(ox50_fft),Fs,Fd,50,20, 'fft');
thd_array(2) = THD(db2mag(ox100_fft),Fs,Fd,100,20, 'fft');
thd_array(3) = THD(db2mag(ox200_fft),Fs,Fd,200,20, 'fft');
thd_array(4) = THD(db2mag(ox400_fft),Fs,Fd,400,20, 'fft');
thd_array(5) = THD(db2mag(ox800_fft),Fs,Fd,800,20, 'fft');
thd_array(6) = THD(db2mag(ox1600_fft),Fs,Fd,1600,15, 'fft');
thd_array(7) = THD(db2mag(ox3200_fft),Fs,Fd,3199,7, 'fft');
thd_array(8) = THD(db2mag(ox6400_fft),Fs,Fd,6400,3, 'fft');
ox800s1_thd = THD(db2mag(ox800s1_fft),Fs,Fd,800,20, 'fft');
ox800s2_thd = THD(db2mag(ox800s2_fft),Fs,Fd,800,20, 'fft');
ox800s3_thd = THD(db2mag(ox800s3_fft),Fs,Fd,800,20, 'fft');
ox800s4_thd = THD(db2mag(ox800s4_fft),Fs,Fd,800,20, 'fft');
ox800s5_thd = THD(db2mag(ox800s5_fft),Fs,Fd,800,20, 'fft');
ox800s6_thd = THD(db2mag(ox800s6_fft),Fs,Fd,800,20, 'fft');
ox800s7_thd = THD(db2mag(ox800s7_fft),Fs,Fd,800,20, 'fft');
%%
f_vector = zeros(1,8);
f_mag = zeros(1,8);

[f_mag(1) x] = max(abs(ox50_fft));
f_vector(1) = ox50(x,1);
[f_mag(2) x] = max(abs(ox100_fft));
f_vector(2) = ox100(x,1);
[f_mag(3) x] = max(abs(ox200_fft));
f_vector(3) = ox200(x,1);
[f_mag(4) x] = max(abs(ox400_fft));
f_vector(4) = ox400(x,1);
[f_mag(5) x] = max(abs(ox800_fft));
f_vector(5) = ox800(x,1);
[f_mag(6) x] = max(abs(ox1600_fft(500:end,1)));
f_vector(6) = ox1600(500+x,1);
[f_mag(7) x] = max(abs(ox3200_fft(500:end,1)));
f_vector(7) = ox3200(500+x,1);
[f_mag(8) x] = max(abs(ox6400_fft(500:7000,1)));
f_vector(8) = ox6400(500+x,1);

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(f_vector, f_mag, 'b-o');
axis([20 20000 0 60])
title("PDTAL Frequency Response");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL measured response");
strValues = strtrim(num2str(f_mag(:),4));
text(f_vector,f_mag,strValues,'VerticalAlignment','bottom');
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
%%
figure('units','normalized','outerposition',[0 0 1 1])
semilogx(thd_frequency_array, thd_array, 'b-o');
axis([20 20000 0 60])
title("PDTAL On-axis THD vs Frequency");
xlabel("Frequency (Hz)"), ylabel("THD (%)")
legend("PDTAL On-axis THD");
strValues = strtrim(num2str(thd_array(:),4));
text(thd_frequency_array,thd_array,strValues,'VerticalAlignment','bottom');
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);

%%
figure('units','normalized','outerposition',[0 0 1 1])
semilogx(thd_frequency_array, thd_array, 'b-o');
axis([20 20000 0 60])
title("PDTAL On-axis THD vs Frequency");
xlabel("Frequency (Hz)"), ylabel("THD (%)")
legend("PDTAL On-axis THD");
strValues = strtrim(num2str(thd_array(:),4));
text(thd_frequency_array,thd_array,strValues,'VerticalAlignment','bottom');
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
%%
figure('units','normalized','outerposition',[0 0 1 1])
%semilogx(ox50(:,1), abs(ox50_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
bar([thd_array(5) ox800s1_thd ox800s2_thd ox800s3_thd ox800s4_thd ox800s5_thd ox800s6_thd ox800s7_thd])
Labels = {'All Transducers', '2^7', '2^6', '2^5', '2^4', '2^3', '2^2', '2^1'};
set(gca, 'XTick', 1:8, 'XTickLabel', Labels);
title("PDTAL 800Hz Bit-weighted Transducer Group THD");
xlabel("Transducer Group Bit Weight"), ylabel("THD (%)")
%%
figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox50(:,1), abs(ox50_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 50Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 50Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox100(:,1), abs(ox100_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 100Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 100Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox200(:,1), abs(ox200_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 200Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 200Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox400(:,1), abs(ox400_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 400Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 400Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox800(:,1), abs(ox800_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 800Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 800Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox1600(:,1), abs(ox1600_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 1600Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 1600Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox3200(:,1), abs(ox3200_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 3200Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 3200Hz sinusoid", "Room noise floor");

figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox6400(:,1), abs(ox6400_fft),'b',noise_floor(:,1), abs(noise_floor_fft),'r');
axis([20 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 6400Hz measurement");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend("PDTAL 6400Hz sinusoid", "Room noise floor");
%%
figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox800(:,1), abs(ox800_fft));
hold on
semilogx(ox800s1(:,1), abs(ox800s1_fft));
hold on
semilogx(ox800s2(:,1), abs(ox800s2_fft));
hold on
semilogx(ox800s3(:,1), abs(ox800s3_fft));
hold on
semilogx(ox800s4(:,1), abs(ox800s4_fft));
hold on
semilogx(ox800s5(:,1), abs(ox800s5_fft));
hold on
semilogx(ox800s6(:,1), abs(ox800s6_fft));
hold on
semilogx(ox800s7(:,1), abs(ox800s7_fft));
hold on

axis([750 850 0 60])

%Fd = Fs/length(ox800_fft);
bin = round(799.8/Fd);
strValues = strtrim(num2str(abs(ox800_fft(bin)),4));
x= abs(ox800_fft(bin));
text(bin+240,x,"Sum: " + strValues + "dB",'VerticalAlignment','bottom');
text(bin+240,x-2,"2^7: " + num2str(abs(ox800s1_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-4,"2^6: " + num2str(abs(ox800s2_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-6,"2^5: " + num2str(abs(ox800s3_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-8,"2^4: " + num2str(abs(ox800s4_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-10,"2^3: " + num2str(abs(ox800s5_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-12,"2^2: " + num2str(abs(ox800s6_fft(bin))) + "dB",'VerticalAlignment','bottom');
text(bin+240,x-14,"2^1: " + num2str(abs(ox800s7_fft(bin))) + "dB",'VerticalAlignment','bottom');


title("PDTAL 800Hz Bit-weighted Transducer Group Response");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend('All Transducers', '2^1','2^2','2^3','2^4','2^5', '2^6', '2^7');
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);

%%
figure('units','normalized','outerposition',[0 0 1 1])
semilogx(ox800(:,1), abs(ox800_fft));
hold on
semilogx(ox800s1(:,1), abs(ox800s1_fft));
hold on
semilogx(ox800s2(:,1), abs(ox800s2_fft));
hold on
semilogx(ox800s3(:,1), abs(ox800s3_fft));
hold on
semilogx(ox800s4(:,1), abs(ox800s4_fft));
hold on
semilogx(ox800s5(:,1), abs(ox800s5_fft));
hold on
semilogx(ox800s6(:,1), abs(ox800s6_fft));
hold on
semilogx(ox800s7(:,1), abs(ox800s7_fft));
hold off
axis([0 Fs/2 0 60])
x_tick_label = get(gca, 'xtick');
set(gca,'XTickLabel', x_tick_label);
title("PDTAL 800Hz Bit-weighted Transducer Group Response");
xlabel("Frequency (Hz)"), ylabel("SPL (dB)")
legend('All Transducers', '2^1','2^2','2^3','2^4','2^5', '2^6', '2^7');


