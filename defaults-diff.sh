#!/bin/zsh
BEFORE_FILE_NAME=/tmp/default-read-before.plist
AFTER_FILE_NAME=/tmp/default-read-after.plist
defaults read > $BEFORE_FILE_NAME
read "INPUT?Change setting, then hit any key."
defaults read > $AFTER_FILE_NAME
diff $BEFORE_FILE_NAME $AFTER_FILE_NAME
