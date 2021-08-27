This file describes the Rtools/bin collection, a set of tools to help
build and test R for Windows.

cat cp cut date diff echo egrep expr find, grep gzip ls makeinfo mkdir
mv rm rsync sed sh sort texindex touch

These are extracted from the cygwin collection
(http://sources.redhat.com/cygwin and several mirrors).  

make is compiled from the sources, altered to use sh.exe in the path 
if this exists (rather than /bin/sh.exe).

tar is compiled from the sources, altered to accept Windows drives
in the path specification.

zip, unzip from the Info-ZIP collection.

tidy, compiled from its sources.

Please note that find and sort have the same names as Windows
utilities; if you want to access the Windows ones while ours are on
the path, you could rename our utilities and edit the FIND and SORT
macros in src/gnuwin32/MkRules, but note that this option is rarely
tested:  we prefer the Rtools utilities to the Windows ones.


Extras
======

Also included are basename, comm, gawk and wc (which used to be
needed), as well as cmp, ln, od, rmdir, tr and uniq which are needed
by some configure scripts.

md5sum can be used to create checksums, or check checksum files.

pedump is very useful for examining DLLs for imports and exports.


Sources
=======

The current version of this archive will be at

http://www.murdoch-sutherland.com/Rtools

and that directory also contains all the sources for the GPL-ed 
components included here.

License
=======

Many of these files are licensed under the GPL; see the file
COPYING.  For the specific license for any particular file, 
see the source.
