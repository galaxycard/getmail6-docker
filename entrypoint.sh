#!/bin/sh
mkdir -p ~/.config/getmail/
cp /config/imap.rc ~/.config/getmail/imap.rc
getmail -r imap.rc -i $FOLDER