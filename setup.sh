#!/usr/bin/env bash

#setting up audio config for Retropie
brew install pulseaudio
pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon

#Pulls image from google drive and sets up vnc server
./run.sh

chmod +x emulationStation.sh
open -a Terminal.app emulationStation
