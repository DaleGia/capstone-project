function y = DTAL_bit_spill(x, bit_depth)
% DTAL_bit_spill  Create sperate vectors for each weighted bit in signal.
%   y = DTAL_bit_spill(x, bit_depth) generates a new signal for each
%   weighted bit present in the quantised signal x, and stores each of
%   these signals in the two dimentional array y. First the input signal 
%   'x' is quantised to n levels determined by the second input
%   'bit_depth'. Individual weighted bits are then seperated from the
%   quantised input signal and saved to new arrays located in the 2d array
%   'y'.
%   MAXIMUM BIT DEPTH IS 24 BITS
%   % Example:
%   %   Generate weighted bit streams from 4 bit digitally converted 200Hz 
%   %   analog signal.
% 
% 
%
%   Fs = 50000;                         % "Analogue" sampling frequency 
%   Ts = 1/Fs;                          % "Analogue" sampling time period
%   t = 0:Ts:1/200*2-Ts;            % time vector to sample signals with
%   x = sin(2*pi*200*t);
%   y = DTAL_bit_spill(x,3);
%  
%   figure(1)
%   plot(t,x,'k',t,y(:,1),'r',t,y(:,2),'b',y(:,3),'g')
%   axis 'tight'
%   legend("Message Signal","LSB","LSB+1","MSB")

unary_mask = zeros(1,24);
unary_mask(1,1:8) = [1 2 4 8 16 32 64 128];
unary_mask(1,9:16) = [256,512,1024,2048,4096,8192,16384,32768];
unary_mask(1,17:24) = [65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608];

signal_amplitude_range = max(x) - min(x);
quantisation_levels = signal_amplitude_range/(2^bit_depth-1);
qx = double(fix(x/quantisation_levels));
qx_sign = double(sign(qx));

for n = 1:1:bit_depth-1
    y(n,:) = double((bitand(abs(qx),unary_mask(n)) .* qx_sign));
    y(n,:) = y(n,:)/unary_mask(n); 
 end
