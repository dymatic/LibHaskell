#/bin/bash
#This script with build LibHaskell, ship it out to StatAnal and PreProcess, build them with their build scripts, and update git.

#Build LibHaskell

read -p "You are about to build LibHaskell. Press [Enter] to continue."
  ghc --make TESTBUILD.hs
  ./TESTBUILD

read -p "Remove object files and continue? [Enter]"
  rm TESTBUILD
  find . -name "*.o" -exec rm -f '{}' +
  find . -name "*.hi" -exec rm -f '{}' +
  
read -p "Copy LibHaskell to PreProcess? [Enter]"
  rm -rf ~/Code/Preprocess/LibHaskell
  cp -r ./LibHaskell ~/Code/Preprocess/LibHaskell
  
read -p "Build PreProcess and commit to git?"
  cd ~/Code/Preprocess/
  ~/Code/Preprocess/Build.sh
  cd ~/Code/LibHaskell
  
echo "PreProcess successfully built."

read -p "Copy LibHaskell to StatAnal? [Enter]"
  rm -rf ~/Code/StatAnal/LibHaskell
  cp -r ./LibHaskell ~/Code/StatAnal/LibHaskell
  
read -p  "Build StatAnal? [Enter]"
  cd ~/Code/StatAnal
  ~/Code/StatAnal/Build.sh
  cd ~/Code/LibHaskell
  
git add *
git add -u

read -p "Send LibHaskell to parrotBot? [Enter]"
rm -rf ~/Code/parrotBot/LibHaskell
cp -r ./LibHaskell ~/Code/parrotBot/LibHaskell

read -p "Build parrotBot?"
cd ~/Code/parrotBot
./Build.sh
cd ~/Code/LibHaskell
echo "LibHaskell built, PreProces built, and StatAnal built successfully. Commit all changes to git."
