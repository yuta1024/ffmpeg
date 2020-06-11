# ffmpeg
[![Build Status](https://travis-ci.org/yuta1024/ffmpeg.svg?branch=master)](https://travis-ci.org/yuta1024/ffmpeg)

[FFmpeg](https://github.com/FFmpeg/FFmpeg) with static build on Alpine Linux.

## Build
```
$ docker build --build-arg CPU_CORE=<NUMBER_OF_CPU_CORES> . -t ffmpeg
```

## Appendix
```
# ldd /opt/build/FFmpeg/ffmpeg
  	/lib/ld-musl-x86_64.so.1 (0x7f90e0d08000)
```

```
# du -h /opt/build/FFmpeg/{ffmpeg,ffprobe}
33.8M	/opt/build/FFmpeg/ffmpeg
33.7M	/opt/build/FFmpeg/ffprobe
```

```
# /opt/build/FFmpeg/ffmpeg -encoders
ffmpeg version n4.2.3 Copyright (c) 2000-2020 the FFmpeg developers
  built with gcc 9.2.0 (Alpine 9.2.0)
  configuration: --enable-gpl --enable-version3 --enable-nonfree --disable-ffplay --disable-doc --enable-libass --enable-libfreetype --enable-libfdk_aac --enable-libmp3lame --enable-libopus --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --pkg-config-flags=--static --extra-cflags=-static --extra-ldflags=-static --disable-debug
  libavutil      56. 31.100 / 56. 31.100
  libavcodec     58. 54.100 / 58. 54.100
  libavformat    58. 29.100 / 58. 29.100
  libavdevice    58.  8.100 / 58.  8.100
  libavfilter     7. 57.100 /  7. 57.100
  libswscale      5.  5.100 /  5.  5.100
  libswresample   3.  5.100 /  3.  5.100
  libpostproc    55.  5.100 / 55.  5.100
Encoders:
 V..... = Video
 A..... = Audio
 S..... = Subtitle
 .F.... = Frame-level multithreading
 ..S... = Slice-level multithreading
 ...X.. = Codec is experimental
 ....B. = Supports draw_horiz_band
 .....D = Supports direct rendering method 1
 ------
 V..... a64multi             Multicolor charset for Commodore 64 (codec a64_multi)
 V..... a64multi5            Multicolor charset for Commodore 64, extended with 5th color (colram) (codec a64_multi5)
 V..... alias_pix            Alias/Wavefront PIX image
 V..... amv                  AMV Video
 V..... apng                 APNG (Animated Portable Network Graphics) image
 V..... asv1                 ASUS V1
 V..... asv2                 ASUS V2
 V..... avrp                 Avid 1:1 10-bit RGB Packer
 V..X.. avui                 Avid Meridien Uncompressed
 V..... ayuv                 Uncompressed packed MS 4:4:4:4
 V..... bmp                  BMP (Windows and OS/2 bitmap)
 V..... cinepak              Cinepak
 V..... cljr                 Cirrus Logic AccuPak
 V.S... vc2                  SMPTE VC-2 (codec dirac)
 VFS... dnxhd                VC3/DNxHD
 V..... dpx                  DPX (Digital Picture Exchange) image
 VFS... dvvideo              DV (Digital Video)
 V.S... ffv1                 FFmpeg video codec #1
 VF.... ffvhuff              Huffyuv FFmpeg variant
 V..... fits                 Flexible Image Transport System
 V..... flashsv              Flash Screen Video
 V..... flashsv2             Flash Screen Video Version 2
 V..... flv                  FLV / Sorenson Spark / Sorenson H.263 (Flash Video) (codec flv1)
 V..... gif                  GIF (Graphics Interchange Format)
 V..... h261                 H.261
 V..... h263                 H.263 / H.263-1996
 V.S... h263p                H.263+ / H.263-1998 / H.263 version 2
 V..... libx264              libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 (codec h264)
 V..... libx264rgb           libx264 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10 RGB (codec h264)
 V..... libx265              libx265 H.265 / HEVC (codec hevc)
 VF.... huffyuv              Huffyuv / HuffYUV
 V..... jpeg2000             JPEG 2000
 VF.... jpegls               JPEG-LS
 VF.... ljpeg                Lossless JPEG
 VF.... magicyuv             MagicYUV video
 VFS... mjpeg                MJPEG (Motion JPEG)
 V.S... mpeg1video           MPEG-1 video
 V.S... mpeg2video           MPEG-2 video
 V.S... mpeg4                MPEG-4 part 2
 V..... msmpeg4v2            MPEG-4 part 2 Microsoft variant version 2
 V..... msmpeg4              MPEG-4 part 2 Microsoft variant version 3 (codec msmpeg4v3)
 V..... msvideo1             Microsoft Video-1
 V..... pam                  PAM (Portable AnyMap) image
 V..... pbm                  PBM (Portable BitMap) image
 V..... pcx                  PC Paintbrush PCX image
 V..... pgm                  PGM (Portable GrayMap) image
 V..... pgmyuv               PGMYUV (Portable GrayMap YUV) image
 VF.... png                  PNG (Portable Network Graphics) image
 V..... ppm                  PPM (Portable PixelMap) image
 VF.... prores               Apple ProRes
 VF.... prores_aw            Apple ProRes (codec prores)
 VFS... prores_ks            Apple ProRes (iCodec Pro) (codec prores)
 V..... qtrle                QuickTime Animation (RLE) video
 V..... r10k                 AJA Kona 10-bit RGB Codec
 V..... r210                 Uncompressed RGB 10-bit
 V..... rawvideo             raw video
 V..... roqvideo             id RoQ video (codec roq)
 V..... rv10                 RealVideo 1.0
 V..... rv20                 RealVideo 2.0
 V..... sgi                  SGI image
 V..... snow                 Snow
 V..... sunrast              Sun Rasterfile image
 V..... svq1                 Sorenson Vector Quantizer 1 / Sorenson Video 1 / SVQ1
 V..... targa                Truevision Targa image
 V..... libtheora            libtheora Theora (codec theora)
 VF.... tiff                 TIFF image
 VF.... utvideo              Ut Video
 V..... v210                 Uncompressed 4:2:2 10-bit
 V..... v308                 Uncompressed packed 4:4:4
 V..... v408                 Uncompressed packed QT 4:4:4:4
 V..... v410                 Uncompressed 4:4:4 10-bit
 V..... libvpx               libvpx VP8 (codec vp8)
 V..... libvpx-vp9           libvpx VP9 (codec vp9)
 V..... wmv1                 Windows Media Video 7
 V..... wmv2                 Windows Media Video 8
 V..... wrapped_avframe      AVFrame to AVPacket passthrough
 V..... xbm                  XBM (X BitMap) image
 V..... xface                X-face image
 V..... xwd                  XWD (X Window Dump) image
 V..... y41p                 Uncompressed YUV 4:1:1 12-bit
 V..... yuv4                 Uncompressed packed 4:2:0
 VF.... zlib                 LCL (LossLess Codec Library) ZLIB
 V..... zmbv                 Zip Motion Blocks Video
 A..... aac                  AAC (Advanced Audio Coding)
 A..... libfdk_aac           Fraunhofer FDK AAC (codec aac)
 A..... ac3                  ATSC A/52A (AC-3)
 A..... ac3_fixed            ATSC A/52A (AC-3) (codec ac3)
 A..... adpcm_adx            SEGA CRI ADX ADPCM
 A..... g722                 G.722 ADPCM (codec adpcm_g722)
 A..... g726                 G.726 ADPCM (codec adpcm_g726)
 A..... g726le               G.726 little endian ADPCM ("right-justified") (codec adpcm_g726le)
 A..... adpcm_ima_qt         ADPCM IMA QuickTime
 A..... adpcm_ima_wav        ADPCM IMA WAV
 A..... adpcm_ms             ADPCM Microsoft
 A..... adpcm_swf            ADPCM Shockwave Flash
 A..... adpcm_yamaha         ADPCM Yamaha
 A..... alac                 ALAC (Apple Lossless Audio Codec)
 A..... aptx                 aptX (Audio Processing Technology for Bluetooth)
 A..... aptx_hd              aptX HD (Audio Processing Technology for Bluetooth)
 A..... comfortnoise         RFC 3389 comfort noise generator
 A..X.. dca                  DCA (DTS Coherent Acoustics) (codec dts)
 A..... eac3                 ATSC A/52 E-AC-3
 A..... flac                 FLAC (Free Lossless Audio Codec)
 A..... g723_1               G.723.1
 A..X.. mlp                  MLP (Meridian Lossless Packing)
 A..... mp2                  MP2 (MPEG audio layer 2)
 A..... mp2fixed             MP2 fixed point (MPEG audio layer 2) (codec mp2)
 A..... libmp3lame           libmp3lame MP3 (MPEG audio layer 3) (codec mp3)
 A..... nellymoser           Nellymoser Asao
 A..X.. opus                 Opus
 A..... libopus              libopus Opus (codec opus)
 A..... pcm_alaw             PCM A-law / G.711 A-law
 A..... pcm_dvd              PCM signed 16|20|24-bit big-endian for DVD media
 A..... pcm_f32be            PCM 32-bit floating point big-endian
 A..... pcm_f32le            PCM 32-bit floating point little-endian
 A..... pcm_f64be            PCM 64-bit floating point big-endian
 A..... pcm_f64le            PCM 64-bit floating point little-endian
 A..... pcm_mulaw            PCM mu-law / G.711 mu-law
 A..... pcm_s16be            PCM signed 16-bit big-endian
 A..... pcm_s16be_planar     PCM signed 16-bit big-endian planar
 A..... pcm_s16le            PCM signed 16-bit little-endian
 A..... pcm_s16le_planar     PCM signed 16-bit little-endian planar
 A..... pcm_s24be            PCM signed 24-bit big-endian
 A..... pcm_s24daud          PCM D-Cinema audio signed 24-bit
 A..... pcm_s24le            PCM signed 24-bit little-endian
 A..... pcm_s24le_planar     PCM signed 24-bit little-endian planar
 A..... pcm_s32be            PCM signed 32-bit big-endian
 A..... pcm_s32le            PCM signed 32-bit little-endian
 A..... pcm_s32le_planar     PCM signed 32-bit little-endian planar
 A..... pcm_s64be            PCM signed 64-bit big-endian
 A..... pcm_s64le            PCM signed 64-bit little-endian
 A..... pcm_s8               PCM signed 8-bit
 A..... pcm_s8_planar        PCM signed 8-bit planar
 A..... pcm_u16be            PCM unsigned 16-bit big-endian
 A..... pcm_u16le            PCM unsigned 16-bit little-endian
 A..... pcm_u24be            PCM unsigned 24-bit big-endian
 A..... pcm_u24le            PCM unsigned 24-bit little-endian
 A..... pcm_u32be            PCM unsigned 32-bit big-endian
 A..... pcm_u32le            PCM unsigned 32-bit little-endian
 A..... pcm_u8               PCM unsigned 8-bit
 A..... pcm_vidc             PCM Archimedes VIDC
 A..... real_144             RealAudio 1.0 (14.4K) (codec ra_144)
 A..... roq_dpcm             id RoQ DPCM
 A..X.. s302m                SMPTE 302M
 A..... sbc                  SBC (low-complexity subband codec)
 A..X.. sonic                Sonic
 A..X.. sonicls              Sonic lossless
 A..X.. truehd               TrueHD
 A..... tta                  TTA (True Audio)
 A..X.. vorbis               Vorbis
 A..... libvorbis            libvorbis (codec vorbis)
 A..... wavpack              WavPack
 A..... wmav1                Windows Media Audio 1
 A..... wmav2                Windows Media Audio 2
 S..... ssa                  ASS (Advanced SubStation Alpha) subtitle (codec ass)
 S..... ass                  ASS (Advanced SubStation Alpha) subtitle
 S..... dvbsub               DVB subtitles (codec dvb_subtitle)
 S..... dvdsub               DVD subtitles (codec dvd_subtitle)
 S..... mov_text             3GPP Timed Text subtitle
 S..... srt                  SubRip subtitle (codec subrip)
 S..... subrip               SubRip subtitle
 S..... text                 Raw text subtitle
 S..... webvtt               WebVTT subtitle
 S..... xsub                 DivX subtitles (XSUB)
```
