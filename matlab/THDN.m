function thdn = THDN(x, Fs, mF, numberOfHarmonics) 
 thdn = 0;
 bin=Fs/length(x);
 y_fft = fft(x)/length(x);
    % for numberOfHarmonics = (ceil(500/bin)+1):1:(ceil(n/bin)+1)
 for i = mF:mF:(Fs/2)
     
     if mod(numberOfHarmonics, mF)
         if ceil(numberOfHarmonics/bin)+1 < ceil(mF-100/bin)+1 || ceil(numberOfHarmonics/bin)+1 > ceil(mF+100/bin)+1
            if ceil(numberOfHarmonics/bin)+1 ~= ceil((mF*2)/bin)+1 ...
               && ceil(numberOfHarmonics/bin)+1 ~= ceil((mF*2)/bin)+1
                
                    break
        
                disp(numberOfHarmonics*bin);
                thdn = thdn + (abs(y_fft(ceil(numberOfHarmonics/bin)+1))^2);
            end
         end
     end
 end
 thdn = sqrt(thdn/abs(y_fft(ceil(mF/bin)+1))^2)*100;
 %disp(thdn);
 
