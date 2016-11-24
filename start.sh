#!/bin/bash

#PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6

# ulimit -s $PLEX_MEDIA_SERVER_MAX_STACK_SIZE
#PLEX_MEDIA_SERVER_MAX_STACK_SIZE=3000

# where the mediaserver should store the transcodes
#PLEX_MEDIA_SERVER_TMPDIR=/tmp

export PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6
export PLEX_MEDIA_SERVER_HOME=/usr/lib/plexmediaserver
export PLEX_MEDIA_SERVER_MAX_STACK_SIZE=3000
export PLEX_MEDIA_SERVER_TMPDIR=/tmp
export PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="${HOME}/Library/Application Support"
export LD_LIBRARY_PATH="${PLEX_MEDIA_SERVER_HOME}"
export TMPDIR="${PLEX_MEDIA_SERVER_TMPDIR}"
(cd /usr/lib/plexmediaserver; ./Plex\ Media\ Server)
