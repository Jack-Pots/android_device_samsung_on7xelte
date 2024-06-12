echo "Copying Toolchain"
# rm -rf prebuilts/zyc_clang || true
cp -R prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 prebuilts/toolchain
# git clone https://gitlab.com/clangsantoni/zyc_clang -b 14 prebuilts/zyc_clang# Create ld symlink to avoid linking error(s)
ln -s $(pwd)/prebuilts/clang/host/linux-x86/clang-r383902b/bin/lld \
    $(pwd)/prebuilts/clang/host/linux-x86/clang-r383902b/bin/ld &> /dev/null
