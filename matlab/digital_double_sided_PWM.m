function Y = digital_double_sided_PWM(x, bitDepth) 
pwmCycleSize = 2^(bitDepth-1);
Y = 0;%zeros(1, pwmCycleSize);
for k = 1:length(x)
    sampleSign = sign(x(k));
    highSamples = floor(abs(x(k))*pwmCycleSize);
    if(highSamples > pwmCycleSize)
        highSamples = pwmCycleSize;
    end
    
    if(sampleSign > 0)
        Y = [Y, ones(1, highSamples)];
        Y = [Y, zeros(1,(pwmCycleSize-highSamples))];
    elseif(sampleSign < 0)
        Y = [Y, -1*ones(1, highSamples)];
        Y = [Y, zeros(1,(pwmCycleSize-highSamples))];  
    else
        Y = [Y, zeros(1, pwmCycleSize)];
    end
end
Y = Y(2:end);