How to do a scrungus

By Boby

You must do three things:

1. Set up a minecraft server
2. Set up your cloud server (router/edge server/whatever you want to call it)
3. Set up the VPN

# Set up a minecraft server
https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server

Important sections in the above document:
- "Linux instructions," specifically "Debian, Ubuntu, Raspbian"
- "Launching Minecraft Server"

You should eventually end up with a Minecraft server jar. Put the jar somewhere you'll remember (like `~/minecraft`)

In `minecraft.service` and `runServer.sh` in this repository, replace any mention of `/home/minecraft` or `/home/minecraft/server` with the new server directory.

Copy `runServer.sh` to the server directory:
```
cp runServer.sh [server directory]
```

Copy `minecraft.service` to `/etc/systemd/system`:
```
sudo cp minecraft.service /etc/systemd/system
```

Tell Systemd there's a new daemon in town:
```
sudo systemctl daemon-reload
```

Install screen:
```
sudo apt-get install screen
```
Screen makes terminal sessions that you can detatch from. Running Minecraft in a screen session means you can read the logs and send commands in real time then detach without stopping the server.

Start and enable the server daemon:
```
sudo systemctl start minecraft
sudo systemctl enable minecraft
```
`start` starts the daemon right now. `enable` makes the daemon run on startup.

Badda boom!

Get your computer's ip address by typing `ip addr` and look for an address that starts with `192.168` or `10.0.0`. Try connecting to this ip from a minecraft client. Try rebooting your server PC and then connecting from a client again!

# Setting up a cloud server
Chugga chugga

# Setting up a VPN
Choo choo!!!
