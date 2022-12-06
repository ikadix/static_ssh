#!/bin/bash

# Run the ssh daemon
/usr/sbin/sshd

# Enter the hosting path  
cd "$HOSTING_PATH" || exit

# Run a http server in the hosting path on port 8080
python3 -m http.server $PORT
