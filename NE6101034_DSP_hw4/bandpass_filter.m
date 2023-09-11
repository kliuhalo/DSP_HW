    [audioIn,fs] = audioread('C:\Users\User\Desktop\Kay\DSP\HW4\singingWithPhoneRing16k16bit-noisy.wav');
    [audioIn_clean,fs] = audioread('C:\Users\User\Desktop\Kay\DSP\HW4\singing16k16bit-clean (1).wav');
     
    %%
    windowSize = 256;
    windowOverlap = [];
    freqRange = 0:fs;
    spectrogram(audioIn(:,1), windowSize, windowOverlap, freqRange/2, fs, 'yaxis');
     
    %%
    spectrogram(audioIn2(:,1), windowSize, windowOverlap, freqRange/2, fs, 'yaxis');
     
    %%
    Wp = 1200/fs;   % Passband Frequency
    Ws = 1710/fs;   % Stopband Frequency
    n = 7;
    beginFreq = 1150/(fs/2);
    endFreq = 1710/(fs/2);
     
    [b,a] = butter(n, [beginFreq, endFreq], 'stop');
    audioOut1 = filter(b, a, audioIn);
     
    beginFreq1 = 4080/(fs/2);
    endFreq1 = 4230/(fs/2);
    [b1,a1] = butter(n, [beginFreq1, endFreq1], 'stop');
    audioOut2 = filter(b1, a1, audioOut1);
     
    beginFreq2 = 5800/(fs/2);
    endFreq2 = 6000/(fs/2);
    [b2,a2] = butter(n, [beginFreq2, endFreq2], 'stop');
    audioOut3 = filter(b2, a2, audioOut2);
     
    beginFreq3 = 3200/(fs/2);
    endFreq3 = 3400/(fs/2);
    [b3,a3] = butter(n, [beginFreq3, endFreq3], 'stop');
    audioOut4 = filter(b3, a3, audioOut3);
     
    beginFreq4 = 7230/(fs/2);
    endFreq4 = 7600/(fs/2);
    [b4,a4] = butter(n, [beginFreq4, endFreq4], 'stop');
    audioOut = filter(b4, a4, audioOut4);
     
    spectrogram(audioOut(:,1), windowSize, windowOverlap, freqRange/2, fs, 'yaxis');
    p = audioplayer(audioOut, fs);
    p.play;


