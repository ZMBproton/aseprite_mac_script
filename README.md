# aseprite_mac_script
Script to compile aseprite on macOS. 

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

# To be added
Automate installation of the trial aseprite .dmg version, replace trial's executable with the newly compiled executable located in /usr/local/bin then add to Applications folder.

You can just install the trial yourself using the GUI on aseprite's official website meanwhile then drag and drop the executables.
