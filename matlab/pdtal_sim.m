function r = pdtal_sim(signal, filter_x, delay_distance, Fs)
    delay = (delay_distance/1000)/343;
    delay_samples = round(delay/(1/Fs));
    disp("Delay: " + num2str(delay));
      % creates array of the correct size to store both the
    % leading zeros for the delay, and the actual signal
        x = zeros(1,round(delay_samples+length(signal)));
    % adds the actual signal to the array
        x((delay_samples+1):end) = signal;
    % Filters the signal with the piezo emulation filter
     x = filter(filter_x, x);
     % adjusts the amplitude of the signal based on the distance
    % the signal has to travel. This is referenced to 1000mm.
     r = x * (1 +(20*log10(1000/delay_distance)));
 end
