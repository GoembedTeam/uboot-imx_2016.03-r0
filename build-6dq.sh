#!/bin/bash

make distclean
make mx6dl-1g-supcore_defconfig
make -j8
cp u-boot.imx uboot-6dl.tran

make distclean
make mx6dl-2g-supcore_defconfig
make -j8
cp u-boot.imx uboot-6dl-2g.tran

make distclean
make mx6q-2g-supcore_defconfig
make -j8
cp u-boot.imx uboot-6q-2g.tran

make distclean
make mx6q-4g-supcore_defconfig
make -j8
cp u-boot.imx uboot-6q-4g.tran

make distclean
make mx6solo-1g-supcore_defconfig
make -j8
cp u-boot.imx uboot-6solo.tran

mv uboot-6dl.tran u-boot-6dl.imx
mv uboot-6dl-2g.tran u-boot-6dl-2g.imx
mv uboot-6q-2g.tran u-boot-6q-2g.imx
mv uboot-6q-4g.tran u-boot-6q-4g.imx
mv uboot-6solo.tran u-boot-6solo.imx
