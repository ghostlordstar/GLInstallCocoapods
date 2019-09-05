#!/bin/bash

checkGem=`gem list`

if [[ $checkGem =~ 'cocoapods' ]]; then
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

    echo 
    echo "Uninstall cocoapods success!"
    else
        echo
        echo "Exit the uninstallation！⚠️ Error code: 10"
        echo
        exit 0
    fi

fi