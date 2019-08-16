To start you will need to download the docker image. To do so go to 
https://drive.google.com/file/d/1XGfDZW4WnMfmh5F5NcHRPstJMmMlK_nQ/view?usp=sharing and download to your current working directory.


```
#setting up audio config for Retropie
brew install pulseaudio

#Start the pulse audio daemon
pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon
```

./setup.sh

navigate to http://localhost:6081

once you see glxgears working

in a new terminal process
run ./emulationStation.sh

if sound is not working change in the sound settings in emulation station
audio card = DEFAULT
audio device = MASTER