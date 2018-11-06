function thd = THD(x, Fs, Fd, mF, n, type) 
 thd = 0;
 %bin=Fs/length(x)
 
 if type == "fft"
    y_fft = x;
 else
    y_fft = fft(x)/length(x);
 end
     
 for numberOfHarmonics = 2:1:n
    % thd = thd + abs(y_fft(round((numberOfHarmonics*mF)/bin)))^2;
     thd = thd + abs(y_fft(round((numberOfHarmonics*mF)/Fd)))^2;
     thd = thd + abs(y_fft(round((numberOfHarmonics*mF)/Fd)+1))^2;
     thd = thd + abs(y_fft(round((numberOfHarmonics*mF)/Fd)-1))^2;

 end
 %thd = sqrt(thd/abs(y_fft(round(mF/bin)))^2)*100;
 fund = abs(y_fft(round(mF/Fd)))^2;
 fund = fund + abs(y_fft(round(mF/Fd)+1))^2
 fund = fund + abs(y_fft(round(mF/Fd)-1))^2
 %thd = sqrt(thd/abs(y_fft(round(mF/Fd)))^2)*100;
 thd = sqrt(thd/fund)*100;

 disp(thd);
 