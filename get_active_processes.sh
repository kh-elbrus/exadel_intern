#!/bin/bash

ps aux --sort -pid | awk '{print $1,$2,$11}' >> unix_processes.txt
