import wave
from scipy.io import wavfile
import os
from scipy.interpolate import interp1d
import numpy as np
import matplotlib.pyplot as plt
import warnings
warnings.simplefilter("ignore", DeprecationWarning)

filepath = '/Users/abc/Desktop/NCKU/NE6101034_DSP_hw2/singing16k16bit-clean.wav'
fs, data = wavfile.read(filepath)

wav_time = len(data)/fs
pre_inter_x = np.linspace(1/fs, wav_time, len(data)) #單位 sec
pre_inter_y = data
print("Pre Resample Length: ", len(pre_inter_y))

plt.plot(pre_inter_x, pre_inter_y)
f = interp1d(pre_inter_x, pre_inter_y)

post_inter_x = np.linspace(1/12000, wav_time, int(wav_time*12000))
post_inter_y = []
for i in range(len(post_inter_x)):
    post_inter_y.append(f(post_inter_x[i]))
post_inter_y = np.array(post_inter_y)/(max(post_inter_y)-min(post_inter_y))
print("Post Resample Length: ", len(post_inter_y))
plt.figure()
plt.plot(post_inter_x, post_inter_y)
plt.show()

wavfile.write("singing12k16bit-clean.wav", 12000, np.array(post_inter_y))




