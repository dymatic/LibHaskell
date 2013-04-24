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
  git commit -m "Library ammendment"
  cd ~/Code/LibHaskell
  
echo "PreProcess successfully built."

read -p "Copy LibHaskell to StatAnal? [Enter]"
  rm -rf ~/Code/StatAnal/LibHaskell
  cp -r ./LibHaskell ~/Code/StatAnal/LibHaskell
  
read -p  "Build StatAnal? [Enter]"
  cd ~/Code/StatAnal
  ~/Code/StatAnal/Build.sh
  git commit -m "Library ammendment"
  cd ~/Code/LibHaskell
  
git add *
git add -u

echo "LibHaskell built, PreProces built, and StatAnal built successfully. Commit all changes to git."