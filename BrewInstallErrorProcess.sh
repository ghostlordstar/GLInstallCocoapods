#!/bin/bash

errorInfo=$1

if [[ $errorInfo =~ 'error' ]]; then
echo 
echo "Check Gem"
echo
echo "Gem installed Cocoapods, to continue we need to uninstall cocoapods: y/n"

read isUninstall

confirm="y"

    if [ $isUninstall = $confirm ]; then

    sudo gem uninstall cocoapods
    sudo gem uninstall cocoapods-core
    sudo gem uninstall cocoapods-deintegrate
    sudo gem uninstall cocoapods-downloader
    sudo gem uninstall cocoapods-plugins
    sudo gem uninstall cocoapods-search
    sudo gem uninstall cocoapods-stats
    sudo gem uninstall cocoapods-trunk
    sudo gem uninstall cocoapods-try

    else
        echo
        echo "Exit the installation！"
    fi
fi