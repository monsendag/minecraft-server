#!/usr/bin/env bash

# ensure that we have the server software
if [ ! -f /data/minecraft_server.jar ]; then
  echo "Downloading minecraft server ..."
  curl --fail --silent  "https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.jar" -o /data/minecraft_server.jar
fi

# accept eula
if [ ! -f /data/eula.txt ]; then
  echo "Adding eula ..."
  echo "eula=true" > /data/eula.txt;
fi

cd /data; java -Xmx2G -jar minecraft_server.jar nogui
