#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when either'
echo '"deliver-for-development.sh" or "deliver-for-development.sh" was executed.'
set -x
if [ -s ".pidfile"]
then
	if ps -p $(cat .pidfile) > /dev/null
	then
	   kill $(cat .pidfile)
	fi
fi
# kill $(cat .pidfile)
