# MPV Player Build

## Q&A
- [The differences between mcf and posix](https://github.com/msys2/MINGW-packages/discussions/13259)
- About shared build: If you have vulkan-1.dll on your OS, mpv will use it from your graphic driver automatically. In this case, vulkan-1.dll can be removed.

## Main project site:
<https://mpv.io/>

## Configuration
<https://mpv.io/manual/>  
All your configurations can be saved within the ***portable_config*** subdirectory

## Awesome Links
- [User Scripts from Official](https://github.com/mpv-player/mpv/wiki/User-Scripts)
- [Default MPV Setting](https://github.com/mpv-player/mpv/blob/master/etc/mpv.conf)
- [Default MPV Key Binding](https://github.com/mpv-player/mpv/blob/master/etc/input.conf)
### Lua Plugin
- [uosc](https://github.com/tomasklaen/uosc)
### Shader
- https://github.com/hooke007/mpv_PlayKit/tree/main/portable_config/shaders

## How to Compile
Fork this repo and build these packages by Github Action  

## Detail
The FFmpeg and MPV library were built with the following libraries
- nvcodec: Nvidia Hardware Accelerated video Encoding/Decoding
- lcms2: Reading ICC Profiles for Your Monitor
- libass/freetype2/fribidi/harfbuzz: Subtitle Support
- luajit: Lua Plugin
- shaderc/spirv/libplacebo: D3D11 & Vulkan Context
- libbluray/libdvdnav/libdvdread/libdvdcss: Parsing BD/DVD
- libdav1d: av1 decoding
- libsvtav1：av1 encoding
- libjxl: jxl decoding
- libarchive：xz，zlib-ng
