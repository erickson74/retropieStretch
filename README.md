
```
#setting up audio config for Retropie
brew install pulseaudio

#Start the pulse audio daemon
pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon
```

Script will pull docker image and start a vnc server in the container pointed at http://localhost:6081/
Run the following...
```
./setup.sh
```

navigate to http://localhost:6081

Once you see glxgears working, run the following in a new terminal process.

```
./emulationStation.sh
```

If sound is not working change in the sound settings in emulation station.

audio card = DEFAULT
audio device = MASTER
