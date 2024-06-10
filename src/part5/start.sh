#!/bin/bash
gcc main.c -lfcgi -o server
service nginx start
spawn-fcgi -p 8080 -n server
