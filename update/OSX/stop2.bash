#!/bin/bash

## update status
echo 'Stopping PlexConnect...'

## unload plexconnect from launchctl to avoid database errors
cd /library/launchdaemons
launchctl unload com.plex.plexconnect.plist

## display the running status of PlexConnect
launchctl list | grep com.plex.plexconnect
