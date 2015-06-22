#!/bin/bash
### BEGIN INIT INFO
# Provides:          skeleton
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Example initscript
# Description:       This file should be used to construct scripts to be
#                    placed in /etc/init.d.
### END INIT INFO

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
DESC="Docker container CONTAINERNAME"
NAME=container-CONTAINERNAME
CONTAINER=CONTAINERNAME
SCRIPTNAME=/etc/init.d/$NAME
DAEMONUSER=admin
#LOGFILE=/usr/bin/docker logs -f $CONTAINER

function _status() {
    #?
    return $?
}

case "$1" in
        start)
                echo -n "Starting container $CONTAINER: "
                /usr/bin/docker start $CONTAINER
                echo "ok"
                ;;
        stop)
                echo -n "Stopping container $CONTAINER: "
                /usr/bin/docker stop $CONTAINER
                echo "ok"
                ;;
        restart|force-reload)
                echo -n "Restarting container $CONTAINER: "
                /usr/bin/docker stop $CONTAINER
                sleep 1
                /usr/bin/docker start $CONTAINER
                echo "ok"
             ;;
        status)
                echo -n "Status of container $CONTAINER: "
                exit 1
                ;;
esac

exit 0