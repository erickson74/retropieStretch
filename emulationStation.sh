#!/usr/bin/env bash

container=$(docker ps -aqf "name=opengl-example")

echo "Opening EmulationStation as retro user"
docker exec --user retro $container emulationstation
