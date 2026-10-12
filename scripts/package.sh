#!/bin/bash
# Pack mpv.exe, mpv.com and ffmpeg.exe of a build directory into the release
# archives, named after the architecture, the CPU without x86-64- (v3, znver3),
# the UTC date and the mpv and FFmpeg commits of its revisions.txt.
#
# Usage: package.sh [--march <cpu>] [workdir]
#   --march <cpu>  build directory build/<cpu> (default: PACKAGE_MARCH of
#                  defaults.env)
#   workdir        location of the build/ directory; the archives are written to
#                  its release/ (default: the repository root)
set -euo pipefail

usage() { sed -n '2,${/^#/!q;s/^# \?//p}' "$0"; exit "${1:-0}"; }

repo_root="$(cd "$(dirname "$(realpath "$0")")/.." && pwd)"
# shellcheck source=defaults.env
. "${repo_root}/scripts/defaults.env"

march="${PACKAGE_MARCH}"
workdir="${repo_root}"
while (( $# > 0 )); do
  case "$1" in
    --march) march="$2"; shift 2 ;;
    --march=*) march="${1#*=}"; shift ;;
    -h|--help) usage 0 ;;
    -*) echo "Unknown option: $1" >&2; usage 1 >&2 ;;
    *) workdir="$1"; shift ;;
  esac
done
workdir="$(cd "${workdir}" && pwd)"
build_dir="${workdir}/build/${march}"
release_dir="${workdir}/release"

# The first nine characters of the commit of <source> in revisions.txt.
revision() {
  awk -v source="$1" '$1 == source { print substr($2, 1, 9) }' \
    "${build_dir}/revisions.txt"
}

name="${TARGET_TRIPLE%%-*}-${march#x86-64-}-$(date -u +%Y%m%d)"
mpv_archive="${release_dir}/mpv-${name}-git-$(revision mpv).7z"
ffmpeg_archive="${release_dir}/ffmpeg-${name}-git-$(revision ffmpeg).7z"

mkdir -p "${release_dir}"
rm -f "${mpv_archive}" "${ffmpeg_archive}"
cd "${build_dir}/sysroot/bin"
7z a -m0=lzma2 -mx=9 -ms=on "${mpv_archive}" mpv.exe mpv.com
7z a -m0=lzma2 -mx=9 -ms=on "${ffmpeg_archive}" ffmpeg.exe
