#!/bin/sh
mkdir -p ~/.config/getmail/
cp /config/imap.rc ~/.config/getmail/imap.rc
getmail -v -r imap.rc -i $FOLDER
