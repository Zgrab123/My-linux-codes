# Linux Kernel 4.17.0-041700-generic
# Linux Mint 19.1 Cinnamon

#!/bin/bash -i

lspci -k | grep -EA3 'VGA|3D|Display'
/bin/bash
