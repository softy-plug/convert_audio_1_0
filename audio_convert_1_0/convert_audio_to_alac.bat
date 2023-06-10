@echo off
mkdir out
for %%i in (*.mp3) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.wav) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.ogg) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.aiff) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.flac) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.dsd) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.mqa) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.ogg) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.wma) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.aac) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.m4a) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

for %%i in (*.raw) do (
  ffmpeg -i "%%i" -y -acodec pcm_s16le -ac 2 -ar 44100 -ab f=320 "out/%%~ni.alac"
)

::[FFmpeg convert_audio_1_0 softy_plug]