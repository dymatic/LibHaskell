LibHaskell
------------

LibHaskell has evolved directly from need. All of these functions were used in other projects and were just thrown into LibHaskell as sort of a "misc"   bin.

Some of the functions are really useful (I couldn't imagine functioning without strt, pos, or filterBreak) so they are now getting their own repository. The LibHaskell that appears in my other programs is an exact copy of this library.

Before each build of my Haskell projects, a build script from this directory tests LibHaskell, sends it to the other project's directories, and builds all of them in the most flexible manor possible. If you would like to get involved in LibHaskell development using SCT and StatAnal, the directory structure is a root of Code
with subdirectories LibHaskell -> LibHaskell for LibHaskell, Preprocess, and StatAnal.

Overview
-----------
There are 4 libraries in LibHaskell.
-LibLists
-Math.LibAlgebra
-Math.LibGeometry

LibLists=
LibLists if for manipulating Lists by size or content. In almost all cases a list is returned. Some of the more "famous" functions are positions, strt, after, and sew.

Math.LibAlgebra=
LibAlgebra is used for mathematical functions not involving tedious data input. Standard Deviation is an example of a function that would be (and is) in this library.

Math.LibGeometry=
LibGeometry is for the more tedious tasks in Math. Mathematical equations are hard to memorize, so if you are going to be using it a lot just throw it in here.
So far there are only two functions that are unused in any projects applying LibHaskell.

Plans
--------
This is a necessity-driven project. When a problem arises in a real application that needs a lower-level function to work, it is implemented, put in LibHaskell, tested, patched in, and finally pushed to all active projects using LibHaskell. It is rare that these libraries will ever see solo development, but it could (and does) happen with LibLists.

License
----------
I am licensing these libraries under the BJLPL, which is a mostly open source license. Go nuts.
The only limitation of the BJLPL is that you may not name you project LibHaskell.
