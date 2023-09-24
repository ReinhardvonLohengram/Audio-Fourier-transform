[x1,Fs1]=audioread('Girl.mp3');
x1 = x1(:,1);
x1 = x1';
N1 = length(x1);%求取抽样点数
t1 = (0:N1-1)/Fs1;%显示实际时间
y1 = fft(x1);%对信号进行傅里叶变换
f1 = Fs1/N1*(0:round(N1/2)-1);%显示实际频点的一半，频域映射，转化为 HZ
[x2,Fs2]=audioread('man.wav');
x2 = x2(:,1);
x2 = x2';
N2 = length(x2);%求取抽样点数
t2 = (0:N2-1)/Fs1;%显示实际时间
y2 = fft(x2);%对信号进行傅里叶变换
f2 = Fs2/N2*(0:round(N2/2)-1);%显示实际频点的一半，频域映射，转化为 HZ
subplot(231);
plot(t1,x1,'g');%绘制时域波形
xlabel('Time/s');ylabel('Amplitude');
title('girl 信号的波形');
grid;
subplot(232);
plot(f1,abs(y1(1:round(N1/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('girl 信号的频谱');
grid;
subplot(234);
plot(t2,x2,'g');%绘制时域波形
xlabel('Time/s');ylabel('Amplitude');
title('man 信号的波形');
grid;
subplot(235);
plot(f2,abs(y2(1:round(N2/2))));
xlabel('Frequency/Hz');ylabel('Amplitude');
title('man 信号的频谱');
grid;
subplot(233);
plot(f1,abs(y1(1:round(N1/2))));
meanfreq(f1,Fs1);
obw(f1,Fs1);
xlim([0,0.05]);
xlabel('Frequency/10^4Hz');ylabel('Amplitude');
title('girl 信号的 99%带宽与中心频率');
grid;
subplot(236);
plot(f2,abs(y2(1:round(N2/2))));
meanfreq(f1,Fs1);
obw(f2,Fs2);
meanfreq(f1,Fs1);
xlim([0,0.05]);
xlabel('Frequency/10^4Hz');ylabel('Amplitude');
title('man 信号的 99%带宽与中心频率');
grid;