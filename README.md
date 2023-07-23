# aseprite_mac_script
Zsh script to make compiling aseprite on macOS easier for anyone in a hurry. 

# Instructions
1. Install the aseprite.sh file and make sure it is in your downloads folder.
2. Open the "Terminal" app. (CMD+space then type "Terminal" if you don't know where to find it)
3. Copy and paste these three commands in order
- `cd Downloads`
- `chmod +x ./aseprite.sh`
- `./aseprite.sh`
4. Please wait, this will take some time. :)
  
# Dependencies and tools installed in the process:
- homebrew (cli package manager for macOS)
- cmake (build tool)
- ninja (another build tool)
- skia (library that asperite uses)
- macOS SDK (used by cmake)
- xcode command line tools (used by cmake)
