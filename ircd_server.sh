#!/bin/bash
# Author: wuseman@bugcrowdninja.com
# License: WTFPL <http://www.wtfpl.net/>

while read -r line; do
    echo "Received: $line" >&2

    if [[ $line == PING* ]]; then
        echo "PONG :${line#PING :}"
    fi

    if [[ $line == NICK* ]]; then
        NICK=${line#NICK }
        echo ":$NICK!$NICK@localhost NICK $NICK"
    fi

    if [[ $line == USER* ]]; then
        echo -e ":localhost 001 $NICK :Welcome to the this private irc server, \e[1;32m$NICK\e[0m - Enjoy your stay! You are here because of one reason, trust!"
    fi

    if [[ $line == JOIN* ]]; then
        CHANNEL=${line#JOIN }
        echo ":$NICK!$NICK@localhost JOIN $CHANNEL"
        echo ":localhost 332 $NICK $CHANNEL :Welcome to $CHANNEL"
    fi

    if [[ $line == PRIVMSG* ]]; then
        TARGET=${line#PRIVMSG }
        MESSAGE=${TARGET#* }
        TARGET=${TARGET%% *}
        echo ":$NICK!$NICK@localhost PRIVMSG $TARGET :$MESSAGE"
    fi
done
