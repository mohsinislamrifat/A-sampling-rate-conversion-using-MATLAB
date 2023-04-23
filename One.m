clc;
clear all;
close all;

hsin = dsp.SineWave(1,[100 200],'SampleRate', 5000,'SamplesPerFrame', 50);
% Create a FIR rate converter filter. 
% The default interpolation factor is 3 and decimation factor is 2.
hfirrc = dsp.FIRRateConverter; 
input = step(hsin);
output = step(hfirrc, input);

% Plot the original and resampled signals.
ndelay = round(length(hfirrc.Numerator)/2/hfirrc.DecimationFactor);
indx = ndelay+1:length(output);
x = (0:length(indx)-1)/hsin.SampleRate*hfirrc.DecimationFactor/hfirrc.InterpolationFactor;
stem((0:38)/hsin.SampleRate, input(1:39));
hold on;
stem(x, hfirrc.InterpolationFactor*output(indx),'r');
legend('Original','Resampled');