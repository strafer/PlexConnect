#!/bin/bash

## stop and restart processes
echo 'Restarting PlexConnect...'

## unload plist
launchctl unload /Library/LaunchDaemons/com.plex.plexconnect.plist

## unload plist
launchctl load /Library/LaunchDaemons/com.plex.plexconnect.plist

## wait a second to allow PlexConnect to load
sleep 1

## display the running status of PlexConnect
#./PlexConnect_daemon.bash status
launchctl list | grep com.plex.plexconnect
