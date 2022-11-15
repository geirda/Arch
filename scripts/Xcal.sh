#!/usr/bin/bash
WHEN=`date +%Y`
RC=0
while [ $RC -ne 103 ] 
do
  PREV=`expr $WHEN - 1`
  NEXT=`expr $WHEN + 1`

  cal $WHEN | \
  gxmessage -font "monospace 12" -buttons $PREV,$NEXT,Quit -file - -title "In the Year $WHEN"

  RC=$?
  case $RC in
  101) WHEN=$PREV
     ;;
  102) WHEN=$NEXT
     ;;
  *) RC=103
     ;;
  esac
done
exit 0
