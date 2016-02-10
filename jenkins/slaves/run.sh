#!/bin/bash

NAME="`hostname`"

su -p -l \
    -s "/bin/bash" \
    -c "java -jar /var/tmp/swarm-client.jar -labels \"${LABELS}\" -executors \"4\" -disableSslVerification -name \"${NAME}\" -username \"x\" -password \"x\" -fsroot \"/var/tmp\""
