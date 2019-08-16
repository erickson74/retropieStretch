#!/usr/bin/env bash

#Gets the containerID for the retropie container
container=$(docker ps -aqf "name=opengl-example")

mkdir emulatorDir
docker cp $container:/home/retro/RetroPie/roms emulatorDir

cd emulatorDir/roms
ls  >> emulatorList.text
mv emulatorList.text ../../
cd ../../
ems=(`cat emulatorList.text`)


#ems=(amstradcpc atari2600 atari7800 atarilynx fds gb gbc mame-libretro mastersystem n64 nes ngpc psx segacd snes zxspectrum arcade atari5200 atari800 fba gamegear gba genesis mame-mame4all megadrive neogeo ngp pcengine sega32x sg-1000 vectrex)
echo "${#ems[@]}"
echo "This script can help you get roms into their correct emulator path"

echo "What emulator is the rom for?"

# Operating system names are used here as a data source
select emulator in "${ems[@]}"
do

yourfilenames=`ls roms`

select rom in $yourfilenames
do

echo "$rom will be added to $emulator emulator"


docker=$(docker cp roms/$rom $container:/home/retro/RetroPie/roms/$emulator)
#Move installed rom into installed directory
mv roms/$rom roms/installed

#clean up
rm -rf emulatorDir

exit
done
done
