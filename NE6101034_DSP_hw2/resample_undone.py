import wave
from scipy.io import wavfile
import os
from scipy.interpolate import interp1d
import numpy as np
import matplotlib.pyplot as plt
import warnings
warnings.simplefilter("ignore", DeprecationWarning)

def change_to_12K(WaveData,length,newlength):
    x = np.linspace(1,length,int(newlength))
    print(len(x))
    print()
    plt.plot(x,WaveData)
    plt.show()
  

# f = wave.open(filepath,'rb')
# params = f.getparams()
# nchannels, sampwidth, framerate, nframes = params[:4]
# print(nchannels, sampwidth, framerate, nframes) # 1 2 16000 149343

# strData = f.readframes(nframes)#讀取音訊，字串格式
# waveData = np.fromstring(strData,dtype=np.int16)#將字串轉化為int
# waveData = waveData*1.0/(max(abs(waveData)))#wave幅值歸一化

# length = len(waveData)
# print('len',length)
# x = list(range(0,len(waveData)))
# WaveData = interp1d(x,waveData)


# plt.plot(x,waveData)
# plt.show()

# newlength = length * (16/12)

#change_to_12K(WaveData,length,newlength)


