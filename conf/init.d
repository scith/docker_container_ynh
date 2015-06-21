#!/bin/bash
### BEGIN INIT INFO

### END INIT INFO

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin
NAME=container-@CONTAINERNAME@
CONTAINER=@CONTAINERNAME@
USER=admin
export LOGNAME=$USER

test -x $DAEMON || exit 0
set -e

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