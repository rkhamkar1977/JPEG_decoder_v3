#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting Binary File: /home/ecegridfs/a/695r39/Downloads/jpeg_decoder_release3/source/input_images.zip to: "../flash/input_images_generic_tristate_controller_0.flash"
#
bin2flash --input="/home/ecegridfs/a/695r39/Downloads/jpeg_decoder_release3/source/input_images.zip" --output="../flash/input_images_generic_tristate_controller_0.flash" --location=0x0 --verbose 

#
# Programming File: "../flash/input_images_generic_tristate_controller_0.flash" To Device: generic_tristate_controller_0
#
nios2-flash-programmer "../flash/input_images_generic_tristate_controller_0.flash" --base=0x10000000 --accept-bad-sysid --device=1 --instance=0 '--cable=USB-Blaster on localhost [1-8]' --program --verbose 

