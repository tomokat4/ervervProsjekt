#!/bin/bash
#
# This is a script i made to run and stop both the Maven spring-boot application for my backend api, and the react frontend
#



cat << EOF
Do you want to start the React, Spring-Boot and Docker elements of devErverv? (Y/n)
EOF

read RESP

if [ "$RESP" = "Y" -o "$RESP" = "y" ]; then
	(cd springboot-backend; mvn -q spring-boot:run) 2> rf_log.txt &
	(cd erverv_frontend_react; npm --silent start run) 2> sb_log.txt&
	docker start dev_erverv
	cat << EOF
	You have started the application(s), rerun this script to stop them.
EOF

else
	kill $(ps aux | grep 'aktivitetErverv' | awk '{print $2}')
	docker kill dev_erverv
	cat << EOF
All background processes related to project have been stopped.
EOF

fi
