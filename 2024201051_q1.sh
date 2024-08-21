#!/bin/bash

filepath=$(find / -iname $1 2>/dev/null)

head -n 4 $filepath