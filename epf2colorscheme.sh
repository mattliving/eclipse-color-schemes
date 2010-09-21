#!/bin/bash

file=$1
theme=${file%.epf}_colors.epf

echo "file_export_version=3.0" > $theme
egrep "SystemDefault" < $file >> $theme
egrep '[0-9]+,[0-9]+,[0-9]+' < $file >> $theme
