#!/bin/sh

export DofusInvoker="C:\Users\HP\AppData\Local\Ankama\Dofus\DofusInvoker.swf"
export selectclass='com.ankamagames.dofus.BuildInfos,com.ankamagames.dofus.network.++,com.ankamagames.jerakine.network.++'
export config='parallelSpeedUp=0'

cd "$( dirname "${BASH_SOURCE[0]}" )"
cd ..

rm -r sources

"C:\Program Files (x86)\FFDec\ffdec.bat"  \
  -config "$config" \
    -selectclass "$selectclass" \
      -export script \
        ./sources $DofusInvoker
