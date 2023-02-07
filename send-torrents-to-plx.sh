#/bin/bash

# exit when any command fails
set -e

# Globals
LOCAL_TORRENT_DIR="/home/egaebel/torrent-files"
PLX_SERVER_IP="192.168.1.34"
REMOTE_TORRENT_DIR="/home/pi/torrent-files"
TRANSMISSION_USER_STRING="transmission:transmission"

for torrent_file_path in "$LOCAL_TORRENT_DIR"/*; do
    torrent_file_basename="$(basename $torrent_file_path)"
    echo "Copying torrent file: ||$torrent_file_basename|| to plx server....."
    scp -r "$torrent_file_path" pi@"$PLX_SERVER_IP":"$REMOTE_TORRENT_DIR"/
    echo "Copied file to plx server!"
    echo "Adding torrent to queue....."
    remote_command="expressvpn connect ; transmission-remote -n \"$TRANSMISSION_USER_STRING\" -a \"$REMOTE_TORRENT_DIR/$torrent_file_basename\" ; transmission-remote -n \"$TRANSMISSION_USER_STRING\" -l"
    echo "running remote command: ||$remote_command||"
    ssh pi@"$PLX_SERVER_IP" "$remote_command"
    echo "Added torrent file: ||$torrent_file_basename||!"
    echo "Deleting torrent file from local machine....."
    rm "$torrent_file_path"
    echo "Deleted torrent file: $torrent_file_basename" !
done
