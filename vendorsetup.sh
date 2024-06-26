echo "Copying Toolchain"
# rm -rf prebuilts/zyc_clang || true
rm -rf prebuilts/toolchain || true
# cp -R prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 prebuilts/toolchain
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 -b lineage-18.1 prebuilts/toolchain
# git clone https://gitlab.com/clangsantoni/zyc_clang -b 14 prebuilts/zyc_clang

# Create ld symlink to avoid linking error(s)
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 -b refs/tags/android-11.0.0_r46 prebuilts/toolchain-clang
ln -s $(pwd)/prebuilts/toolchain-clang/clang-r383902b/bin/lld \
    $(pwd)/prebuilts/toolchain-clang/clang-r383902b/bin/ld &> /dev/null
