# Implement-a-sampling-rate-conversion-using-MATLAB

Following figure represents a conceptual operation of a FIR rate converter which uses up-sampling and
down-sampling idea

<img width="415" alt="image" src="https://user-images.githubusercontent.com/117919211/233845953-311aae20-feb8-4158-bb7c-6ee1c41c6d36.png">

Step I : Define up-sampling factor, down-sampling factor and input frequencies f1 and f2

Step II : Represent input sequence x [n]=sin(2*pi*f1*n)+sin(2*pi*f2*n) with frequencies f1 and f2

Step III : Perform sampling rate conversion on input signal using MATLAB ‘resample’ function

Step IV : Plot the input and output signal/sequence
