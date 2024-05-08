#! /bin/bash

SERIAL_PORT="/dev/ttyACM0"
BAUD_RATE="115200"

SESSION_NAME="rf_cli"
TIMESTAMP="$(date +%s)"

TEMP_FILE="diff-all-$TIMESTAMP.txt"

rm $TEMP_FILE &> /dev/null

echo "screen -dmS $SESSION_NAME -L -Logfile $TEMP_FILE $SERIAL_PORT $BAUD_RATE"
screen -dmS $SESSION_NAME -L -Logfile $TEMP_FILE $SERIAL_PORT $BAUD_RATE
sleep 2
screen -S $SESSION_NAME -X stuff '#^M'
sleep 2
screen -S $SESSION_NAME -X stuff 'diff all^M'
sleep 5

screen -S $SESSION_NAME -X quit
sleep 1

CRAFT_NAME="$(sed -n 's/# name: //p' $TEMP_FILE | tr -d '\r' | tr -d '\n')"
FINAL_FILE="diff-all-$CRAFT_NAME-$TIMESTAMP.txt"

grep -A999999 '# diff all' $TEMP_FILE > $FINAL_FILE
rm $TEMP_FILE
