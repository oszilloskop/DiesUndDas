```
brew install bash git subversion python gawk coreutils gnu-sed gnu-getopt gnu-time grep wget gnu-tar findutils unzip quilt xz
```

#### OpwnWRT baut nur mit einem case-sensitive filesystem
```
hdiutil create -size 120g -type SPARSE -fs "Case-sensitive HFS+" -volname OpenWrt OpenWrt.sparseimage
hdiutil attach OpenWrt.sparseimage
```

#### Patch
-> https://github.com/openwrt/packages/issues/6844#issuecomment-417886000
```
nano ./wspace/packages/packages/net/xtables-addons/Makefile
```
alles mit ```perl``` rauswerfen.

Dazu folgenden Patch im Gluon-Verzeichnis anwenden:
```
patch -N -p1 -i ../DarwinBuildEnvironment.patch
```
```
diff --git a/packages/packages/net/xtables-addons/Makefile b/packages/packages/net/xtables-addons/Makefile
index 5c78ff89..c0bef064 100644
--- a/packages/packages/net/xtables-addons/Makefile
+++ b/packages/packages/net/xtables-addons/Makefile
@@ -126,7 +126,6 @@ define Package/iptgeoip
   # we could also use wget-nossl but that's more complicated than our
   # syntax of dependencies permits...
   DEPENDS:=iptables +iptables-mod-geoip \
-               +perl +perlbase-getopt +perlbase-io +perl-text-csv_xs \
                +!BUSYBOX_CONFIG_WGET:wget +!BUSYBOX_CONFIG_GZIP:gzip +!BUSYBOX_CONFIG_UNZIP:unzip
 endef

```

#### PATH

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

### Build-Abbrüche
#### Target sunxi-cortexa7 
```
make[4]: Entering directory `/Volumes/Freifunk_128GB/gluon/wspace/openwrt/package/boot/uboot-sunxi'                                                                                             
rm -f /Volumes/Freifunk_128GB/gluon/wspace/openwrt/build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/u-boot-Bananapi/u-boot-2017.11/.built                                                    
touch /Volumes/Freifunk_128GB/gluon/wspace/openwrt/build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/u-boot-Bananapi/u-boot-2017.11/.built_check                                              
/Library/Developer/CommandLineTools/usr/bin/make  -C /Volumes/Freifunk_128GB/gluon/wspace/openwrt/build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/u-boot-Bananapi/u-boot-2017.11 CROSS_COMPI
LE=arm-openwrt-linux-muslgnueabi- DTC="/Volumes/Freifunk_128GB/gluon/wspace/openwrt/build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/linux-sunxi_cortexa7/linux-4.14.128/scripts/dtc/dtc" HOS
TCC="gcc" HOSTCFLAGS="-O2 -I/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/host/include -I/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/hostpkg/include -I/Volumes/Freifunk
_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/include -I/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/host/include -I/Volumes/Freifunk_128GB
/gluon/wspace/openwrt/staging_dir/hostpkg/include -I/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/include" HOSTLDFLAGS="-L/Volumes/Fre
ifunk_128GB/gluon/wspace/openwrt/staging_dir/host/lib -L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/hostpkg/lib -L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-a
rm_cortex-a7+neon-vfpv4_musl_eabi/host/lib" BL31=/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/image/bl31.bin                              
  CHK     include/config/uboot.release                                                                                                                                                          
  CHK     include/generated/version_autogenerated.h                                                                                                                                             
  CHK     include/generated/timestamp_autogenerated.h                                                                                                                                           
  CHK     include/generated/generic-asm-offsets.h                                                                                                                                               
  CHK     include/generated/asm-offsets.h                                                                                                                                                       
  HOSTLD  tools/gen_ethaddr_crc                                                                                                                                                                 
ld: warning: directory not found for option '-L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/lib'                                     
  HOSTLD  tools/mkenvimage                                                                                                                                                                      
ld: warning: directory not found for option '-L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/lib'                                     
  HOSTLD  tools/dumpimage                                                                                                                                                                       
ld: warning: directory not found for option '-L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/lib'                                     
ld: warning: PIE disabled. Absolute addressing (perhaps -mdynamic-no-pic) not allowed in code signed PIE, but used in _image_type_ptr_aisimage from tools/aisimage.o. To fix this warning, don't
 compile with -mdynamic-no-pic or link with -Wl,-no_pie                                                                                                                                         
  HOSTLD  tools/mkimage                                                                                                                                                                         
ld: warning: directory not found for option '-L/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/host/lib'                                     
ld: warning: PIE disabled. Absolute addressing (perhaps -mdynamic-no-pic) not allowed in code signed PIE, but used in _image_type_ptr_aisimage from tools/aisimage.o. To fix this warning, don't
 compile with -mdynamic-no-pic or link with -Wl,-no_pie                                         
  HOSTCC  tools/lib/bch.o                                                                       
In file included from tools/lib/bch.c:1:                                                        
./tools/../lib/bch.c:121:12: error: static declaration of 'fls' follows                         
      non-static declaration                                                                    
static int fls(int x)                                                                           
           ^                                                                                    
/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/usr/include/strings.h:87:6: note:      
      previous declaration is here                                                              
int      fls(int) __OSX_AVAILABLE_STARTING(__MAC_10_5, __IPHONE_2_0);                           
         ^                                                                                      
In file included from tools/lib/bch.c:1:                                                        
./tools/../lib/bch.c:274:12: warning: implicit declaration of function 'htobe32'                
      is invalid in C99 [-Wimplicit-function-declaration]                                       
                w = r[0]^cpu_to_be32(*pdata++);                                                 
                         ^                                                                      
./tools/../lib/bch.c:74:21: note: expanded from macro 'cpu_to_be32'                                                                                                                             
#define cpu_to_be32 htobe32                                                                                                                                                                     
                    ^                                                                                                                                                                           
1 warning and 1 error generated.                                                                                                                                                                
make[6]: *** [tools/lib/bch.o] Error 1                                                                                                                                                          
make[5]: *** [tools] Error 2                                                                                                                                                                    
make[4]: *** [/Volumes/Freifunk_128GB/gluon/wspace/openwrt/build_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/u-boot-Bananapi/u-boot-2017.11/.built] Error 2                                   
make[4]: Leaving directory `/Volumes/Freifunk_128GB/gluon/wspace/openwrt/package/boot/uboot-sunxi'                                                                                              
time: package/boot/uboot-sunxi/Bananapi/compile#0.62#0.40#1.20                                                                                                                                  
make[3]: *** [package/boot/uboot-sunxi/compile] Error 2                                                                                                                                         
make[3]: Leaving directory `/Volumes/Freifunk_128GB/gluon/wspace/openwrt'                                                                                                                       
make[2]: *** [/Volumes/Freifunk_128GB/gluon/wspace/openwrt/staging_dir/target-arm_cortex-a7+neon-vfpv4_musl_eabi/stamp/.package_compile] Error 2                                                
make[2]: Leaving directory `/Volumes/Freifunk_128GB/gluon/wspace/openwrt'                       
make[1]: *** [world] Error 2                                                                    
make: *** [all] Error 2         
```
