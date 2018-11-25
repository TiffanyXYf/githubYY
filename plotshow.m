function plotshow(signal,win_size,lap,fs1)

han_win = hamming(win_size); 
nfft = win_size;
[S1, F, T] = spectrogram(signal, han_win,lap, nfft, fs1);

imagesc(T, F, log10(abs(S1)))
colorbar
set(gca, 'YDir', 'normal')
xlabel('Time (secs)')
ylabel('Freq (Hz)')


end