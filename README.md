# mpv-winbuild

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/Kosm8/mpv-winbuild/mpv.yml?branch=main&cacheSeconds=1800)](https://github.com/Kosm8/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/Kosm8/mpv-winbuild?cacheSeconds=1800)](https://github.com/Kosm8/mpv-winbuild/releases/latest)
[![downloads](https://img.shields.io/github/downloads/Kosm8/mpv-winbuild/total?cacheSeconds=1800)](https://github.com/Kosm8/mpv-winbuild/releases)

Use Github Action to build mpv for Windows with latest commit.

Based on <https://github.com/Kosm8/mpv-winbuild-cmake>.

## Auto-Builds

Checks the mpv repository every hour for updates. If there is an update and it is relevant to the windows build, it will automatically run the compilation and **release it on success**.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and run `MPV` workflow by yourself.

> [!NOTE]
> `mpv-dev-xxxx.7z` is libmpv, including the `libmpv-2.dll` file.
>
> Some media players based on libmpv use `libmpv-2.dll` or `mpv-2.dll`.You can upgrade their libmpv by overwriting this dll.
>
> `mpv-dev-lgpl-xxxx.7z` is libmpv under LGPLv2.1+ license, which disables LGPLv2.1+ incompatible packages and statically links to ffmpeg under LGPLv3.
> 
> I'm not a lawyer and can't guarantee that I've disabled all LGPL-incompatible packages, use at your own risk.

### Release Retention Policy

-   The last 30 days of builds will be retained.

## Information about packages

same as [shinchiro](https://github.com/Kosm8/mpv-winbuild-cmake/blob/master/README.md#information-about-packages) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKosm8%2Fmpv-winbuild-cmake&cacheSeconds=1800)](https://github.com/Kosm8/mpv-winbuild-cmake)

-   Git/Hg
    -   ANGLE [![ANGLE](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fgoogle%2Fangle%2Fmain&cacheSeconds=1800)](https://github.com/google/angle)
    -   bzip2 [![bzip2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.com%2Fbzip2%2Fbzip2&cacheSeconds=1800)](https://gitlab.com/bzip2/bzip2)
    -   dav1d [![dav1d](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fcode.videolan.org%2Fvideolan%2Fdav1d&cacheSeconds=1800)](https://code.videolan.org/videolan/dav1d/)
    -   expat [![expat](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibexpat%2Flibexpat&cacheSeconds=1800)](https://github.com/libexpat/libexpat)
    -   FFmpeg [![FFmpeg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FFFmpeg%2FFFmpeg&cacheSeconds=1800)](https://github.com/FFmpeg/FFmpeg)
    -   fontconfig [![fontconfig](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.freedesktop.org%2Ffontconfig%2Ffontconfig&cacheSeconds=1800)](https://gitlab.freedesktop.org/fontconfig/fontconfig)
    -   freetype2 [![freetype2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ffreetype%2Ffreetype&cacheSeconds=1800)](https://github.com/freetype/freetype)
    -   fribidi [![fribidi](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ffribidi%2Ffribidi&cacheSeconds=1800)](https://github.com/fribidi/fribidi)
    -   harfbuzz [![harfbuzz](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fharfbuzz%2Fharfbuzz%2Fmain&cacheSeconds=1800)](https://github.com/harfbuzz/harfbuzz)
    -   lcms2 [![lcms2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fmm2%2FLittle-CMS&cacheSeconds=1800)](https://github.com/mm2/Little-CMS)
    -   libarchive [![libarchive](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibarchive%2Flibarchive&cacheSeconds=1800)](https://github.com/libarchive/libarchive)
    -   libaribcaption [![libaribcaption](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fxqq%2Flibaribcaption&cacheSeconds=1800)](https://github.com/xqq/libaribcaption)
    -   libass [![libass](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibass%2Flibass&cacheSeconds=1800)](https://github.com/libass/libass)
    -   libjpeg [![libjpeg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Flibjpeg-turbo%2Flibjpeg-turbo%2Fmain&cacheSeconds=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   libplacebo (with [glad](https://github.com/Dav1dde/glad), [fast_float](https://github.com/fastfloat/fast_float), [xxhash](https://github.com/Cyan4973/xxHash)) [![libplacebo](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fhaasn%2Flibplacebo&cacheSeconds=1800)](https://github.com/haasn/libplacebo)
    -   libpng [![libpng](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fglennrp%2Flibpng&cacheSeconds=1800)](https://github.com/glennrp/libpng)
    -   libunibreak [![libunibreak](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fadah1972%2Flibunibreak&cacheSeconds=1800)](https://github.com/adah1972/libunibreak)
    -   libxml2 [![libxml2](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.gnome.org%2FGNOME%2Flibxml2&cacheSeconds=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   libzimg (with [graphengine](https://github.com/sekrit-twc/graphengine)) [![libzimg](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fsekrit-twc%2Fzimg&cacheSeconds=1800)](https://github.com/sekrit-twc/zimg)
    -   libzvbi [![libzvbi](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fzapping-vbi%2Fzvbi%2Fmain&cacheSeconds=1800)](https://github.com/zapping-vbi/zvbi)
    -   luajit [![luajit](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fopenresty%2Fluajit2%2Fv2.1-agentzh&cacheSeconds=1800)](https://github.com/openresty/luajit2)
    -   mpv [![mpv](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fmpv-player%2Fmpv&cacheSeconds=1800)](https://github.com/mpv-player/mpv)
    -   mujs [![mujs](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fcodeberg%2Fccxvii%2Fmujs&cacheSeconds=1800)](https://codeberg.org/ccxvii/mujs)
    -   nvcodec-headers [![nvcodec-headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FFFmpeg%2Fnv-codec-headers&cacheSeconds=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fgoogle%2Fshaderc%2Fmain&cacheSeconds=1800)](https://github.com/google/shaderc)
    -   spirv-cross [![spirv-cross](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FSPIRV-Cross%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   subrandr [![subrandr](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fafishhh%2Fsubrandr%2Fmaster&cacheSeconds=1800)](https://github.com/afishhh/subrandr)
    -   uchardet [![uchardet](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgitlab%2Fgitlab.freedesktop.org%2Fuchardet%2Fuchardet&cacheSeconds=1800)](https://gitlab.freedesktop.org/uchardet/uchardet)
    -   vulkan [![Vulkan](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FVulkan-Loader%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/Vulkan-Loader) 
    -   vulkan-header [![Vulkan-Headers](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2FKhronosGroup%2FVulkan-Headers%2Fmain&cacheSeconds=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   xz [![xz](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Ftukaani-project%2Fxz&cacheSeconds=1800)](https://github.com/tukaani-project/xz)
    -   zlib [![zlib](https://img.shields.io/endpoint?url=https%3A%2F%2Flatest-commit-badgen.vercel.app%2Fgithub%2Fzlib-ng%2Fzlib-ng&cacheSeconds=1800)](https://github.com/zlib-ng/zlib-ng)

-   Zip
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.18)
