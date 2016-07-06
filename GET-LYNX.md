Getting Lynx
============

We use lynx to fetch pages from Google.  Here's how you get Lynx on a Mac.

1. Fetch the source. (You may want to check at http://lynx.invisible-island.net/
   for the current version.)

    curl -O http://invisible-mirror.net/archives/lynx/tarballs/lynx2.8.8rel.2.tar.gz

2. Unpack the source

    http://lynx.invisible-island.net/

3. Prepare to build

    cd lynx2-8-8
    ./configure --mandir=/usr/share/man

4. Build

    make

5. Install.  (It appears it gets installed in /usr/local/bin.)

    sudo make install


