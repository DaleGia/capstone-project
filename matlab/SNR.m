function thd = THD(x, Fs, mF, n) 
 thd = 0;
 bin=Fs/length(x);
 y_fft = fft(x)/length(x);
     for numberOfHarmonics = 2:1:n
         thd = thd + abs(y_fft(ceil((numberOfHarmonics*mF)/bin)+1))^2;
     end
     thd = sqrt(thd/abs(y_fft(ceil(mF/bin)+1))^2)*100;
 %disp(thd);
 