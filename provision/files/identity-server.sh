#! /bin/sh
startcmd='/opt/wso2is/bin/wso2server.sh start > /dev/null &'
restartcmd='/opt/wso2is/bin/wso2server.sh restart > /dev/null &'
stopcmd='/opt/wso2is/bin/wso2server.sh stop > /dev/null &'

case "$1" in
  start)
  echo "Starting WSO2 Identity Server ..."
  su -c "${startcmd}" wso2is
  ;;
  restart)
  echo "Re-starting WSO2 Identity Server ..."
  su -c "${restartcmd}" wso2is
  ;;
  stop)
  echo "Stopping WSO2 Identity Server ..."
  su -c "${stopcmd}" wso2is
  ;;
  *)
  echo "Usage: $0 {start|stop|restart}"
  exit 1
esac
