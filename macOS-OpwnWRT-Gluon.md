```
brew install bash git subversion python gawk coreutils gnu-sed gnu-getopt gnu-time grep wget gnu-tar findutils unzip quilt xz
```

#### OpwnWRT baut nur mit einem case-sensitive filesystem
```
hdiutil create -size 20g -type SPARSE -fs "Case-sensitive HFS+" -volname OpenWrt OpenWrt.sparseimage
hdiutil attach OpenWrt.sparseimage
```

#### Patch
-> https://github.com/openwrt/packages/issues/6844#issuecomment-417886000

```
#!/usr/local/bin/bash
echo $PATH
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/unzip/bin:$PATH"
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
echo $PATH
  
  
#### PATH
   
==> bash
In order to use this build of bash as your login shell,
it must be added to /etc/shells.

==> coreutils
Commands also provided by macOS have been installed with the prefix "g".
If you need to use these commands with their normal names, you
can add a "gnubin" directory to your PATH from your bashrc like:
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

==> gnu-sed
GNU "sed" has been installed as "gsed".
If you need to use it as "sed", you can add a "gnubin" directory
to your PATH from your bashrc like:
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

==> unzip
unzip is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.
If you need to have unzip first in your PATH run:
echo 'export PATH="/usr/local/opt/unzip/bin:$PATH"' >> ~/.zshrc

==> Pouring findutils-4.6.0.mojave.bottle.4.tar.gz
==> Caveats
All commands have been installed with the prefix "g".
If you need to use these commands with their normal names, you
can add a "gnubin" directory to your PATH from your bashrc like:
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

==> Pouring gnu-getopt-2.33.2.mojave.bottle.tar.gz
==> Caveats
gnu-getopt is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.
If you need to have gnu-getopt first in your PATH run:
echo 'export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"' >> ~/.zshrc

==> Pouring gnu-tar-1.32.mojave.bottle.tar.gz
==> Caveats
GNU "tar" has been installed as "gtar".
If you need to use it as "tar", you can add a "gnubin" directory
to your PATH from your bashrc like:
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
```
