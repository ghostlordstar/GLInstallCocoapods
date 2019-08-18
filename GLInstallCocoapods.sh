#!/bin/bash

echo "###########################################################"
echo "#                                                         #"
echo "#     GLInstallCocoapods.sh                               #"
echo "#     Install Cocoapods with Homebrew                     #"
echo "#                                                         #"
echo "#     Created by ghostlord on 2019/8/16.                  #"
echo "#     Copyright © 2019 ghostlord. All rights reserved.    #"
echo "#                                                         #"
echo "###########################################################"

checkGem=`gem list`

if [[ $checkGem =~ 'cocoapods' ]]; then
echo
echo "gem installed Cocoapods, to continue we need to uninstall cocoapods: y/n"

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

echo
echo "### Begin install Cocoapods ###"
echo
echo ">> 1. Check HomeBrew version ..."

if command -v brew > /dev/null; then

    echo

    brewVersion=$(brew --version)
    
    echo "Homebrew Version : ${brewVersion}"
    echo
    echo "HomeBrew is installed"
    echo
    echo ">> 2. Install Cocoapods"
    echo

    if command -v pod > /dev/null; then

        echo "⚠️ Cocoapods is already installed."
        echo 

        podVersion=$(pod --version)

        echo "Cocoapods current version :${podVersion}"
        echo
        echo "If you want reinstall Cocoapods, place run:"
        echo
        echo "brew reinstall Cocoapods"
        echo
        echo "If you want update Cocoapods, place run:"
        echo
        echo "brew upgrade Cocoapods"

        exit 0
    else 

        brew install cocoapods

        if [$? -eq 0]; then

            echo
            echo "Cocoapods install success!"  
            echo
            echo ">> 3. Cocoapods setUp ..."

            pod setup

            if [$? -eq 0]; then

                echo
                echo "✅ Cocoapods setUp success! Enjoy it!"  
                echo
                exit 1
            else 
                echo "❌ Cocoapods setUp faild! ⚠️ Error code: 11"
                exit 1
            fi
        else
            echo "❌ Cocoapods install faild! ⚠️ Error code: 12"
        fi
    fi

else 

    echo
    echo "HomeBrew is not install"
    echo
    echo "Install HomeBrew ..."
    echo

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    if [$? -eq 0]; then

        echo
        echo "HomeBrew install success!" 
        echo
        echo ">> 2. Install Cocoapods"
        echo

        brew install cocoapods

        if [$? -eq 0]; then

            echo
            echo "Cocoapods install success!"  
            echo
            echo ">> 3. Cocoapods setUp ..."

            if [$? -eq 0]; then
                echo
                echo "✅ Cocoapods setUp success! Enjoy it!"  
                exit 1
            else 
                echo
                echo "❌ Cocoapods setUp faild! ⚠️ Error code: 21"
            fi

        else
            echo "❌ Cocoapods setUp faild! ⚠️ Error code: 22"
        fi

    else
        echo "❌ HomeBrew install faild! ⚠️ Error code: 23"
    fi

fi

exit 1