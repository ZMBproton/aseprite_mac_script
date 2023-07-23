#!/bin/zsh
cd
echo "We will install X-code command line tools now. This might take a while."
xcode-select --install
wait
echo "Next, homebrew will install."
echo "You are going to enter your password now."
echo "Note: Password characters will not show up on terminal."
sleep 10
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install cmake
brew install ninja 
cd $HOME/Downloads/
curl -O -L "https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-macOS-Release-x64.zip"
unzip Skia-macOS-Release-x64.zip -d skia
cd $HOME/Downloads/
curl -O -L "https://github.com/aseprite/aseprite/releases/download/v1.3-rc5/Aseprite-v1.3-rc5-Source.zip"
unzip Aseprite-v1.3-rc5-Source.zip -d aseprite
cd aseprite
mkdir build
cd build
cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_OSX_ARCHITECTURES=x86_64 \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=10.9 \
  -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
  -DLAF_BACKEND=skia \
  -DSKIA_DIR=$HOME/Downloads/skia \
  -DSKIA_LIBRARY_DIR=$HOME/Downloads/skia/out/Release-x64 \
  -DSKIA_LIBRARY=$HOME/Downloads/skia/out/Release-x64/libskia.a \
  -G Ninja \
  ..
ninja aseprite
