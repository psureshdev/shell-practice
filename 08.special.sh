#!/bin/bash

echo "all variable passed $@"
echo "number of variable $#"
echo "$PWD"
echo "$HOME"
echo "$USER"
echo "$0"
echo "$$"
sleep 10 &
echo "$!"