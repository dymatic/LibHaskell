LibHaskell
------------

LibHaskell has evolved directly from need. All of these functions were used in other projects and were just thrown into LibHaskell as sort of a "misc"   bin.

Some of the functions are really useful (I couldn't imagine functioning without strt, pos, or filterBreak) so they are now getting their own repository. The LibHaskell that appears in my other programs is an exact copy of this library.

Before each build of my Haskell projects, a build script from this directory tests LibHaskell, sends it to the other project's directories, and builds all of them in the most flexible manor possible.

Overview
-----------
There are 4 libraries.
-LibLists
-LibStrings
-Math.LibAlgebra
-Math.LibGeometry

LibGeometry is a work-in-progress, and LibStrings only has one function that will soon be translated to work on all kinds of lists and eventually merged into LibLists. LibLists is the grandaddy of the bunch, and it has a lot of functions that don't necessarily return a list, so look around.

Plans
--------
My biggest plan is to rewrite the documentation regarding the Libraries. This is being pushed out in a really hasty manor and it will be remedied soon enough. These libraries won't be updated alone, but will be ammended when I need something in another project (LibGeometry will probably see some solo action, though)

License
----------
I am licensing these libraries under the BJLPL, which is a mostly open source license. Go nuts.
